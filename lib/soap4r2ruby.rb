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

    inputs = io_methods.select{|e| e.first == "in"}
    if inputs.size == 1  
      input = inputs.first
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
    else
      # this is a multipart message so 
      # create a class in this namespace that has instance variables for each part
      #basically it should take on the following form
      #module MySoap; module Interface
      #
      #
      ## {urn:GoogleSearch}GoogleSearchResult
      ##   documentFiltering - SOAP::SOAPBoolean
      ##   searchComments - SOAP::SOAPString
      ##   estimatedTotalResultsCount - SOAP::SOAPInt
      ##   estimateIsExact - SOAP::SOAPBoolean
      ##   resultElements - MySoap::Interface::ResultElementArray
      ##   searchQuery - SOAP::SOAPString
      ##   startIndex - SOAP::SOAPInt
      ##   endIndex - SOAP::SOAPInt
      ##   searchTips - SOAP::SOAPString
      ##   directoryCategories - MySoap::Interface::DirectoryCategoryArray
      ##   searchTime - SOAP::SOAPDouble
      #class GoogleSearchResult
      #  attr_accessor :documentFiltering
      #  attr_accessor :searchComments
      #  attr_accessor :estimatedTotalResultsCount
      #  attr_accessor :estimateIsExact
      #  attr_accessor :resultElements
      #  attr_accessor :searchQuery
      #  attr_accessor :startIndex
      #  attr_accessor :endIndex
      #  attr_accessor :searchTips
      #  attr_accessor :directoryCategories
      #  attr_accessor :searchTime
      #
      #  def initialize(documentFiltering = nil, searchComments = nil, estimatedTotalResultsCount = nil, estimateIsExact = nil, resultElements = nil, searchQuery = nil, startIndex = nil, endIndex = nil, searchTips = nil, directoryCategories = nil, searchTime = nil)
      #    @documentFiltering = documentFiltering
      #    @searchComments = searchComments
      #    @estimatedTotalResultsCount = estimatedTotalResultsCount
      #    @estimateIsExact = estimateIsExact
      #    @resultElements = resultElements
      #    @searchQuery = searchQuery
      #    @startIndex = startIndex
      #    @endIndex = endIndex
      #    @searchTips = searchTips
      #    @directoryCategories = directoryCategories
      #    @searchTime = searchTime
      #  end
      #end
      #end
      #end
      class_name = m[m.size-3].gsub(/^[a-z]|\s+[a-z]/) { |a| a.upcase }
      newclass_def = "class #{class_name}; RUNTIME_GEN = true; NUM_INSTANCE_VARS = #{inputs.size}; #{Soap4r2RubyHelpers::create_attr_accessors(inputs)}; #{Soap4r2RubyHelpers::create_initializer(inputs)};end"
      (eval(@namespace)).module_eval(newclass_def)
      @root_node = (eval(@namespace+'::'+class_name))
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
    if(root_node.constants.include?("RUNTIME_GEN")) 
      args = []
      root_node.const_get("NUM_INSTANCE_VARS").times do
        args += [nil]
      end
      @default_instance = root_node.new(*args)
    else
      schemadef = driver.literal_mapping_registry.schema_definition_from_class(root_node)
      args = schemadef.elements.entries.map{|e| build_default_instance_for_element_and_schemadef(e, schemadef)}
      @default_instance = eval(root_node.name).new(*args)
    end  
    
  end
  
  def build_default_instance_for_element_and_schemadef(e, schemadef)
      # for each of the instance variables in this object
      # get the type of the object
      # tag min and max values on the object.
      # if a simple type instantiate the object. (primitives) 
      # if a complex type recursively instantiate elements of that object 
#      p e.varname
#      p e.mapped_class
#      p e.class
    if (e.class == SOAP::Mapping::SchemaSequenceDefinition && e.mapped_class == nil)
      #assume any SchemaSequenceDefinition without a mapped class is can be handled as an Array
      object = [nil]
    elsif (e.class == SOAP::Mapping::SchemaElementDefinition && e.mapped_class == nil)
      #assume any element without a mapped class can be handled as a String
      object = ""  
    elsif (::SOAP.constants.grep(/^SOAP/).include?(e.mapped_class.to_s.gsub('::SOAP','')))
      #simple types - (no subelements)
      # default to empty ruby string
      object = ""
    elsif (e.mapped_class.ancestors.first.to_s.include?(@namespace) && e.mapped_class.ancestors.include?(Enumerable) && !e.mapped_class.ancestors.include?(Array))
      #enums - (grab the first constant as the default value)
      object = e.mapped_class.class_eval((e.mapped_class.constants - ['Enumerator'])[0])
    elsif (e.mapped_class.ancestors.include?(Array) && !e.mapped_class.ancestors.first.to_s.include?(@namespace))
      # args -schemadef.elements.entries.map{|e| build_default_instance_for_element_and_schemadef(e, schemadef)}
      #todo may need to implement this differently
      object = [nil]
    else
      #complex types
      sub_schemadef = Soap4r2RubyHelpers::get_schemadef_for_type_name(e.mapped_class, @mapping_registry, @literal_mapping_registry)
      sub_args = sub_schemadef.last.elements.entries.map{|s| build_default_instance_for_element_and_schemadef(s, sub_schemadef)}
      object = e.mapped_class.new(*sub_args)
#      #workaround for soap4r trac bug 515 http://dev.ctor.org/soap4r/ticket/515
#      for v in sub_schemadef.last.elements.entries
#        if !object.respond_to?(v.varname)
#          object.class.class_eval("attr_accessor :#{v.varname}_")
#        end        
#      end
#      object = e.mapped_class.new(*sub_args)
#      for v in sub_schemadef.last.elements.entries
#        if !object.respond_to?(v.varname) && object.respond_to?("#{v.varname}_") 
#          object.send("#{v.varname}_=", build_default_instance_for_element_and_schemadef(v, sub_schemadef))
#        end        
#        
#      end
    end
    Soap4r2RubyHelpers::tag_minoccurs_maxoccurs(object, e.minoccurs, e.maxoccurs)
    if object.maxoccurs != 1
      object = [object]
    end  
    object
  end
  
end
