require 'rubygems'
gem 'soap4r'

# this class is used to fetch the wsdl2ruby generated info
# examples of info this class returns are LiteralRegistry, EncodedRegistry, Method names schema info etc. 

class Object; attr_accessor :minoccurs, :maxoccurs; end
  
class String
  def to_array
    self.gsub(/\.slice\(([0-9]+)\)/, '[\1]')
  end
end

module Soap4r2RubyHelpers
  
  def self.tag_minoccurs_maxoccurs(object, i_min, i_max)
    class << object; attr_accessor :minoccurs, :maxoccurs; end
    if(i_max == "" or i_max == nil)
      i_max = nil
    else
      i_max = i_max.to_i
    end
    if(i_min == "" or i_min == nil)
      i_min = nil
    else
      i_min = i_min.to_i
    end
    object.maxoccurs = i_max
    object.minoccurs = i_min
  end
  
  
  def self.min_max_tagger(obj, driver)
    #1. given an object and the literal registry get it's corresponding schemadef. 
    #2. get the minoccurs and maxoccurs for each of its child elements
    #3. tag the object's corresponding elements. 
    #     (if the maxoccurs is greater than 1 tag all elements in the array)
    #     (if the minoccurs is zero then keep in mind that there may not be an element to tag.)
    #4. for each of it's elements that are complex types
    #5. find the schemadef for that complextype and go to step 1. 

    (obj.instance_variables-["@maxoccurs", "@minoccurs"]).each do |element_name|
      element = obj.instance_variable_get(element_name)
      if (element.class == Array)
        element.each do |e|
          schemadef = get_schemadef_for_type_name(obj.class, driver.mapping_registry, driver.literal_mapping_registry)
          max = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef(element_name.to_s.gsub('@', ''), schemadef)
          min = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef(element_name.to_s.gsub('@', ''), schemadef)
          e.maxoccurs = max
          e.minoccurs = min          
          min_max_tagger(e, driver)
        end
      elsif (element.class.to_s.include?(driver.namespace.to_s))
        min_max_tagger(element, driver)
      end
      if (element.class != NilClass) && (element.class != Array)
        schemadef = get_schemadef_for_type_name(obj.class, driver.mapping_registry, driver.literal_mapping_registry)
        max = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef(element_name.to_s.gsub('@', ''), schemadef)
        min = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef(element_name.to_s.gsub('@', ''), schemadef)
        if(element.frozen?)
          modifiable_dup = [Marshal.load(Marshal.dump(element))]
          modifiable_dup.maxoccurs = max
          modifiable_dup.minoccurs = min
          obj.instance_variable_set(element_name, modifiable_dup)
        else
          element.maxoccurs = max
          element.minoccurs = min
        end
      end      
    end  
    obj
  end
  
  def self.get_schemadef_for_class_name(node_name, mapping_registry, literal_mapping_registry)
    search_path = ["@type_schema_definition", "@class_elename_schema_definition", "@elename_schema_definition", "@class_schema_definition"]
    search_path.each do |path|
      [mapping_registry, literal_mapping_registry].each do |registry|
        schemadef = registry.instance_eval(path).select do |k,v| 
          v.elename != nil
        end.select do |k, v| 
          v.elename.name == node_name
        end.first
        if schemadef != nil
          return schemadef
        end  
      end
    end
    #if the node itself is a simple SOAP defined type return it  
    if (eval(node_name) !=nil)
      return eval(node_name)
    end
    #if you ever get here finally throw a not found exception
    throw Exception.new("can't find schemadef for #{node_name}")
  end
   
  def self.get_schemadef_for_type_name(node_name, mapping_registry, literal_mapping_registry)
    search_path = ["@type_schema_definition", "@class_elename_schema_definition", "@elename_schema_definition", "@class_schema_definition"]
    search_path.each do |path|
      [mapping_registry, literal_mapping_registry].each do |registry|
        schemadef = registry.instance_eval(path).select do |k,v| 
          v.respond_to?(:class_for) && v.class_for != nil
        end.select do |k, v| 
          v.class_for == node_name
        end.first
        if schemadef != nil
          return schemadef
        end
      end
    end
    #if the node itself is a simple SOAP defined type return it  
    if eval"#{node_name}" !=nil
      return eval"#{node_name}"
    end
    #if you ever get here finally throw a not found exception
    throw Exception.new("can't find schemadef for #{node_name}")
  end
  
  def self.get_type_from_name_and_schemadef(name, schemadef)
    schemadef.last.elements.select{|e| e.elename.name.downcase == name.downcase}.first.mapped_class
  end
  
  def self.get_minoccurs_from_name_and_schemadef(name, schemadef)
    schemadef.last.elements.select{|e| e.elename.name.downcase == name.downcase}.first.minoccurs
  end
  
  def self.get_maxoccurs_from_name_and_schemadef(name, schemadef)
    schemadef.last.elements.select{|e| e.elename.name.downcase == name.downcase}.first.maxoccurs
  end
  
  def self.find_service_method_names(service_method_descriptors)
    service_method_descriptors.map do |e| 
      e[e.size-3]
    end
  end
  
  def self.get_method_descriptor_for_name(service_method_name, service_method_descriptors)
    service_method_descriptors.select do |e| 
      service_method_name == e[e.size-3]
    end.first
  end
  
  def self.create_attr_accessors(array)
    #        <part name="key"            type="xsd:string"/>
    #    <part name="q"              type="xsd:string"/>
    #    <part name="start"          type="xsd:int"/>
    #    <part name="maxResults"     type="xsd:int"/>
    #    <part name="filter"         type="xsd:boolean"/>
    #    <part name="restrict"       type="xsd:string"/>
    #    <part name="safeSearch"     type="xsd:boolean"/>
    #    <part name="lr"             type="xsd:string"/>
    #    <part name="ie"             type="xsd:string"/>
    #    <part name="oe"             type="xsd:string"/>
    result = "attr_accessor "
     ((array.size)-1).times do |i|
      result += ':'+array[i][1]+','
    end
    result += ':'+array.last[1]+';'
  end
  
  def self.create_initializer(array)
    #        <part name="key"            type="xsd:string"/>
    #    <part name="q"              type="xsd:string"/>
    #    <part name="start"          type="xsd:int"/>
    #    <part name="maxResults"     type="xsd:int"/>
    #    <part name="filter"         type="xsd:boolean"/>
    #    <part name="restrict"       type="xsd:string"/>
    #    <part name="safeSearch"     type="xsd:boolean"/>
    #    <part name="lr"             type="xsd:string"/>
    #    <part name="ie"             type="xsd:string"/>
    #    <part name="oe"             type="xsd:string"/>
    result = "def initialize("
     ((array.size)-1).times do |i|
      result += array[i][1]+','
    end
    result += array.last[1]+')'
     ((array.size)-1).times do |i|
      result += '@'+array[i][1]+'='+array[i][1]+';'
    end
    result += '@'+array.last[1]+'='+array.last[1]+';end;'
  end
  
  def self.mergeDefaultInstanceWithUnMarshalledValues(default_instance, unmarshalled_instance)
    if (unmarshalled_instance == nil && default_instance != nil)
      unmarshalled_instance = default_instance
    end
    unmarshalled_instance.minoccurs = default_instance.minoccurs
    unmarshalled_instance.maxoccurs = default_instance.maxoccurs    
    if(unmarshalled_instance.class == Array && default_instance.class == Array)
      unmarshalled_instance.each do |e|
        e = mergeDefaultInstanceWithUnMarshalledValues(default_instance.first, e)
      end
    end
    if(unmarshalled_instance.class == String && default_instance.class.ancestors[2] == Enumerable)
      puts "const getting #{unmarshalled_instance} at top level"
      if unmarshalled_instance == "" or unmarshalled_instance == nil
        unmarshalled_instance = (default_instance.class.constants - ['Enumerator'])[0]
      else  
        unmarshalled_instance = default_instance.class.const_get(unmarshalled_instance)
      end
    end
      
    (default_instance.instance_variables- ["@minoccurs", "@maxoccurs"]).each do |i|
      sub_unmarshalled = unmarshalled_instance.instance_variable_get(i)
      sub_default = default_instance.instance_variable_get(i)
      sub_unmarshalled.minoccurs = sub_default.minoccurs
      sub_unmarshalled.maxoccurs = sub_default.maxoccurs
      if sub_unmarshalled == nil && sub_default != nil
        unmarshalled_instance.instance_variable_set(i, sub_default)
      end
      if(sub_unmarshalled.class == Array && sub_default.class == Array)
        sub_unmarshalled.each do |e|
          e = mergeDefaultInstanceWithUnMarshalledValues(sub_default.first, e)
        end
      end
      
      if(sub_unmarshalled.class == String && sub_default.class.ancestors[2] == Enumerable)
        if sub_unmarshalled == "" or sub_unmarshalled == nil
          sub_unmarshalled = (sub_default.class.constants - ['Enumerator'])[0]
        else  
          sub_unmarshalled = sub_default.class.const_get(sub_unmarshalled)
        end
      end      
      (sub_default.instance_variables- ["@minoccurs", "@maxoccurs"]).each do |d|
        sub_unmarshalled.instance_variable_set(d , mergeDefaultInstanceWithUnMarshalledValues(sub_default.instance_variable_get(d), sub_unmarshalled.instance_variable_get(d)))
      end
      unmarshalled_instance.instance_variable_set(i, sub_unmarshalled)
    end
    unmarshalled_instance
  end
end  