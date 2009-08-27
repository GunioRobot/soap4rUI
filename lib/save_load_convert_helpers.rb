require File.dirname(File.expand_path(__FILE__)) + '/soap4r2ruby'
require 'soap/mapping/registry.rb'  

module SaveLoadConvertHelpers
  
  def self.save_request_as_yaml(params, file)
    @params = params
    File.open(file, "w+").syswrite(@params.to_yaml)
  end

  def self.load_request_from_yaml(file)
    YAML.load(File.open(file))
  end

  def self.load_request_xml(filename, client, namespace, wsdl)
    xml = File.open(filename).readlines.to_s
    driver = Soap4r2Ruby.new(client, namespace, wsdl)
    SaveLoadConvertHelpers::xml2obj(driver, xml)
  end

  def self.save_request_xml(obj, file, client_folder, namespace, wsdl)
    driver = Soap4r2Ruby.new(client_folder, namespace, wsdl)
    File.open(file, "w+").syswrite(SaveLoadConvertHelpers::obj2xml(driver, obj))
  end  

  def self.del_request_xml(file)
    #ensure we aren't being hacked with different file names or folder names.
    file.gsub!('\\','')
    file.gsub!('/','')
    File.delete("public/saved_forms/requests/"  + file)
  end  
  
  def self.del_response_xml(file)
    #ensure we aren't being hacked with different file names or folder names.
    file.gsub!('\\','')
    file.gsub!('/','')
    File.delete("public/saved_forms/responses/"  + file)
  end  

  def self.obj2xml(driver, obj)
    name = driver.literal_mapping_registry.elename_schema_definition_from_class(obj.class).elename.name
    soap_element = SOAP::Mapping.obj2soap(obj, driver.literal_mapping_registry, name)
    env = SOAP::SOAPEnvelope.new(nil, SOAP::SOAPBody.new(soap_element))
    xml = SOAP::Processor.marshal(env)
  end  

  def self.xml2obj(driver, xml)
    env = SOAP::Processor.unmarshal(xml)
    body = env.body
    soap_element = body.root_node  
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name(soap_element.elename.name, driver.mapping_registry, driver.literal_mapping_registry)
    my_klass_type = schemadef.first 
    obj = SOAP::Mapping.soap2obj(soap_element, driver.literal_mapping_registry, my_klass_type)
    Soap4r2RubyHelpers::min_max_tagger(obj, driver)
    obj
  end

end