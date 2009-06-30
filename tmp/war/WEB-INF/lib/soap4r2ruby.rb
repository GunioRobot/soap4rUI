require 'rubygems'
gem 'soap4r'
#require 'diff/lcs' 
require File.dirname(File.expand_path(__FILE__)) + '/soap4r2ruby_helpers'
require File.dirname(File.expand_path(__FILE__)) + '/generator_helpers'
require File.dirname(File.expand_path(__FILE__)) + '/save_load_convert_helpers'
require 'soap/wsdlDriver'

# this class is intended to take a folder where generated classes live
# the optional module name added to keep the namespace clean
# the the method defined in the wsdl 
# and return a default empty ruby object representing the Model to be used to populate the form fields of the test client
# fields that can occur more than once are arrays
# somehow we need to tag the optional fields. 

class Soap4r2Ruby
  attr_accessor :root_node, :default_instance, :mapping_registry, :literal_mapping_registry
  attr_accessor :service_method_descriptors, :port_type, :folder, :namespace, :driver_file, :default_endpoint, :service_method_names, :rpc_driver
  def initialize(client_folder, i_namespace, wsdl)
    @folder = client_folder
    @namespace = i_namespace
    @wsdl = wsdl
    curr = Dir.pwd
    Dir.chdir(@folder)
    # $DEBUG = true=
    @driver_file =(Dir.entries(@folder) - [".", "..", ".svn"]).select{|e| e.to_s.include?'Driver.rb'}.first
    require @folder+"/"+@driver_file
    Dir.chdir(curr)
    
    @factory = SOAP::WSDLDriverFactory.new(@wsdl)    
    @port_type = @factory.wsdl.porttypes[0]
    @service_method_names = @port_type.operations.map{|op| op}
    @service_method_names.uniq!
    @rpc_driver = @factory.create_rpc_driver
    @default_endpoint = @rpc_driver.endpoint_url
    @service_method_descriptors = @port_type.operations#eval( ns + '::' + @port_type.name.name)::Methods        
    
    driver = eval(@namespace+"::"+@port_type.name.name).new
    @literal_mapping_registry = driver.literal_mapping_registry
    @mapping_registry = driver.mapping_registry
  end
  
  
  def find_root_node_for_method(service_method_name)
    m = @port_type.operations.select{|e| e.operationname.name == service_method_name}.first
    root_node_name = m.input.name.name    
    # driver = eval(@namespace+"::"+@port_type.name.name).new
    # name = driver.literal_mapping_registry.elename_schema_definition_from_class(obj.class).elename.name
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name(root_node_name, @mapping_registry, @literal_mapping_registry)
    @root_node = schemadef.last.class_for
  end
  
  def build_default_input_instance_for_method(service_method_name)
    root_node = find_root_node_for_method(service_method_name)
    build_default_input_instance_for_root_node(root_node)  
  end    
  
  def build_default_input_instance_for_root_node(root_node)
    driver = eval(@namespace+"::"+@port_type.name.name).new
    schemadef = driver.literal_mapping_registry.schema_definition_from_class root_node
    args = schemadef.elements.entries.map{|e| build_default_instance_for_element_and_schemadef(e, schemadef)}
    @default_instance = eval(root_node.name).new(*args)    
    # for each of the instance variables in this object
    # get the type of the object
    # tag min and max values on the object.
    # if a simple type instantiate the object. (primitives) 
    # if a complex type recursively instantiate elements of that object 
    
  end
  
  def build_default_instance_for_element_and_schemadef(e, schemadef)
    if(::SOAP.constants.grep(/^SOAP/).include?(e.mapped_class.to_s.gsub('::SOAP','')))
      #simple types - (no subelements)
      object = ""
    elsif (e.mapped_class.ancestors.include?(String))
      #enums - (grab the first constant as the default value)
      object = ""
    else
      #complex types
      sub_schemadef = Soap4r2RubyHelpers::get_schemadef_for_type_name(e.mapped_class, @mapping_registry, @literal_mapping_registry)
      sub_args = sub_schemadef.last.elements.entries.map{|s| build_default_instance_for_element_and_schemadef(s, sub_schemadef)}
      object = e.mapped_class.new(*sub_args)
    end
    Soap4r2RubyHelpers::tag_minoccurs_maxoccurs(object, e.minoccurs, e.maxoccurs)
    if object.maxoccurs != 1
      object = [object]
    end  
    object
  end
  
end
