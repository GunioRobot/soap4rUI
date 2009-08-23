require 'rubygems'
gem 'soap4r'
#require 'diff/lcs' 
require File.dirname(File.expand_path(__FILE__)) + '/soap4r2ruby_helpers'
require File.dirname(File.expand_path(__FILE__)) + '/generator_helpers'
require File.dirname(File.expand_path(__FILE__)) + '/save_load_convert_helpers'
require 'soap/wsdlDriver'

# this class is intended to take a folder where wsdl2ruby generated classes live 
# the optional module name added to keep the namespace uniq and clean
# the wsdl used to create those classes 
# as parameters to the init
# then return a default empty ruby object representing the Model to be used to populate the form fields of the test client
# fields that can occur more than once are arrays based on maxoccurs
# it will also tag the optional fields fields based on minoccurs 

class Soap4r2Ruby
  attr_accessor :root_node, :default_instance, :mapping_registry, :literal_mapping_registry
  attr_accessor :service_method_descriptors, :port_type, :folder, :namespace, :driver_file 
  attr_accessor :default_endpoint, :service_method_names, :rpc_driver
  def initialize(client_folder, i_namespace, wsdl)
    @folder = client_folder
    @namespace = i_namespace
    @wsdl = wsdl
    curr = Dir.pwd
    begin
      Dir.chdir(@folder)
      # $DEBUG = true=
      @driver_file =(Dir.entries(@folder) - [".", "..", ".svn"]).select{|e| e.to_s.include?'Driver.rb'}.first
      require @folder+"/"+@driver_file
    ensure
      Dir.chdir curr
    end  
        
    @factory = SOAP::WSDLDriverFactory.new(@wsdl)    
    @port_type = @factory.wsdl.porttypes[0]
    # @service_method_names = @port_type.operations.map{|op| op}    
    # @service_method_names.uniq!

    @rpc_driver = @factory.create_rpc_driver
    @default_endpoint = @rpc_driver.endpoint_url
    @service_method_descriptors = eval( namespace + '::' + @port_type.name.name)::Methods
    @service_method_names = Soap4r2RubyHelpers::find_service_method_names(@service_method_descriptors)
    driver = eval(@namespace+"::"+@port_type.name.name).new
    @literal_mapping_registry = driver.literal_mapping_registry
    @mapping_registry = driver.mapping_registry
    # @service_methods = eval( ns + '::' + @port_type)::Methods    

  end

  
  def find_root_node_for_method(service_method_name)
    driver = eval(@namespace+"::"+@port_type.name.name).new    
    @mapping_registry = driver.mapping_registry
    @literal_mapping_registry = driver.literal_mapping_registry
    # sample of what the Methods constant looks like 
    # Methods = [
    #       [ "serviceAlive",
    #         "serviceAlive",
    #         [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveRequest"]],
    #           ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveResponse"]] ],
    #         { :request_style =>  :document, :request_use =>  :literal,
    #           :response_style => :document, :response_use => :literal,
    #           :faults => {} }
    #       ],
    #       [ "applyDiscount",
    #         "applyDiscount",
    #         [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceRequest"]],
    #           ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceResponse"]] ],
    #         { :request_style =>  :document, :request_use =>  :literal,
    #           :response_style => :document, :response_use => :literal,
    #           :faults => {"MySoap::InterfaceOne::DiscountServiceFault"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"http://services.gid.gap.com/discountService/v1", :namespace=>nil, :name=>"DiscountServiceFault"}} }
    #       ]
    #     ]
    m = Soap4r2RubyHelpers::get_method_descriptor_for_name(service_method_name, @service_method_descriptors)

    
    io_methods = m.select{|e| e.class == Array}.first
    # io methods look something like this
    # [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceRequest"]],
    # or
    # [["in", "key", ["::SOAP::SOAPString"]], ["in", "url", ["::SOAP::SOAPString"]], ["retval", "return", ["::SOAP::SOAPBase64"]]]

    input = io_methods.select{|e| e.first == "in"}.first

    if input == nil || input.last == nil
      #hack hack hack
      root_node_name = m.last[:request_qname].name
    else
      root_node_name = input.last.last
    end
    # driver = eval(@namespace+"::"+@port_type).new
    # name = driver.literal_mapping_registry.elename_schema_definition_from_class(obj.class).elename.name
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name(root_node_name, @mapping_registry, @literal_mapping_registry)
    if(schemadef.class == Array)
      @root_node = schemadef.last.class_for
    else
      @root_node = schemadef
    end  
  end
  
    # 
    # def find_root_node_for_method(service_method_name)
    #   m = @port_type.operations.select{|e| e.operationname.name == service_method_name}.first
    #   root_node_name = m.input.name.name 
    #   # driver = eval(@namespace+"::"+@port_type.name.name).new
    #   # name = driver.literal_mapping_registry.elename_schema_definition_from_class(obj.class).elename.name
    #   schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name(root_node_name, @mapping_registry, @literal_mapping_registry)
    #   @root_node = schemadef.last.class_for
    # end
  
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
    if (e.class == SOAP::Mapping::SchemaSequenceDefinition)
      #todo implement this
      object = [nil]
    elsif (::SOAP.constants.grep(/^SOAP/).include?(e.mapped_class.to_s.gsub('::SOAP','')))
      #simple types - (no subelements)
      object = ""
    elsif (e.mapped_class.ancestors.include?(String))
      #enums - (grab the first constant as the default value)
      object = nil#e.mapped_class.class_eval((e.mapped_class.constants - ['Enumerator'])[0])
    elsif (e.mapped_class.ancestors.include?(Array))
      # require 'ruby-debug';debugger
      # args -schemadef.elements.entries.map{|e| build_default_instance_for_element_and_schemadef(e, schemadef)}
      #todo implement this
      object = [nil]
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
