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
    nil
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
    nil
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
  
end  