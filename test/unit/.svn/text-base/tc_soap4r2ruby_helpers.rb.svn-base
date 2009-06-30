require 'rubygems'
require 'test/unit'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/soap4r2ruby'
class TC_Soap4r2rubyHelpers < Test::Unit::TestCase
  
  def setup
    @client_folder = File.dirname(File.expand_path(__FILE__)) + "/test/fixtures/latest_client"
    @namespace = "MySoap::InterfaceOne"
    @wsdl = File.dirname(File.expand_path(__FILE__)) + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    @tool = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @tool.build_default_input_instance_for_method("applyDiscount")     
    
  end
  
  def test_get_schemadef_for_class_name
    result = Soap4r2RubyHelpers::get_schemadef_for_class_name("DiscountServiceRequest", @tool.mapping_registry, @tool.literal_mapping_registry)
    assert_equal(eval(@namespace+'::DiscountServiceRequestType'), result.first)
    assert_equal(SOAP::Mapping::SchemaDefinition, result.last.class)
    assert_equal(4, result.last.elements.size)
    assert_equal("RequestDateTime", result.last.elements.entries[0].elename.name)
    assert_equal("StoreID", result.last.elements.entries[1].elename.name)
    assert_equal("RequestType", result.last.elements.entries[2].elename.name)
    assert_equal("orderRequest", result.last.elements.entries[3].elename.name)
    
  end
  
  def test_get_schemadef_for_type_name
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name("DiscountServiceRequest", @tool.mapping_registry, @tool.literal_mapping_registry)
    result = Soap4r2RubyHelpers::get_type_from_name_and_schemadef("orderRequest", schemadef)
    assert_equal(eval(@namespace+'::OrderType'), result)
    result = Soap4r2RubyHelpers::get_schemadef_for_type_name(eval(@namespace+'::OrderType'), @tool.mapping_registry, @tool.literal_mapping_registry)
    assert_equal(SOAP::Mapping::SchemaDefinition, result.last.class)
    assert_equal(10, result.last.elements.size)
    assert_equal("OrderID", result.last.elements.entries[0].elename.name)
    assert_equal("QualifyType", result.last.elements.entries[1].elename.name)
    assert_equal("OrderDate", result.last.elements.entries[2].elename.name)
    assert_equal("Channel", result.last.elements.entries[3].elename.name)
    assert_equal("Brand", result.last.elements.entries[4].elename.name)
    assert_equal("Market", result.last.elements.entries[5].elename.name)
    assert_equal("OrderLineItems", result.last.elements.entries[6].elename.name)
    assert_equal("Promotions", result.last.elements.entries[7].elename.name)
    assert_equal("Tenders", result.last.elements.entries[8].elename.name)
    assert_equal("MaxDiscountsAllowed", result.last.elements.entries[9].elename.name)
  end
  
  def test_get_schemadef_for_type_name_classes_available
    result = Soap4r2RubyHelpers::get_schemadef_for_type_name(eval(@namespace+'::DiscountServiceRequestType'), @tool.mapping_registry, @tool.literal_mapping_registry)
    assert_equal(SOAP::Mapping::SchemaDefinition, result.last.class)
    assert_equal(4, result.last.elements.size)
    assert_equal("RequestDateTime", result.last.elements.entries[0].elename.name)
    assert_equal("StoreID", result.last.elements.entries[1].elename.name)
    assert_equal("RequestType", result.last.elements.entries[2].elename.name)
    assert_equal("orderRequest", result.last.elements.entries[3].elename.name)
  end
  
  def test_get_type_from_name_and_schemadef
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name("DiscountServiceRequest", @tool.mapping_registry, @tool.literal_mapping_registry)
    result = Soap4r2RubyHelpers::get_type_from_name_and_schemadef("RequestDateTime", schemadef)
    assert_equal(SOAP::SOAPString, result)
    result = Soap4r2RubyHelpers::get_type_from_name_and_schemadef("StoreID", schemadef)
    assert_equal(SOAP::SOAPString, result)
    result = Soap4r2RubyHelpers::get_type_from_name_and_schemadef("RequestType", schemadef)
    assert_equal(SOAP::SOAPString, result)
    result = Soap4r2RubyHelpers::get_type_from_name_and_schemadef("orderRequest", schemadef)
    assert_equal(eval(@namespace+'::OrderType'), result)
    
  end
  
  def test_get_min_from_name_and_schemadef
     schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name("DiscountServiceRequest", @tool.mapping_registry, @tool.literal_mapping_registry)
     result = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef("RequestDateTime", schemadef)
     assert_equal(0, result)
     result = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef("StoreID", schemadef)
     assert_equal(0, result)
     result = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef("RequestType", schemadef)
     assert_equal(0, result)
     result = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef("orderRequest", schemadef)
     assert_equal(1, result)
  end
  
  def test_get_max_from_name_and_schemadef
     schemadef = Soap4r2RubyHelpers::get_schemadef_for_class_name("DiscountServiceRequest", @tool.mapping_registry, @tool.literal_mapping_registry)
     result = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef("RequestDateTime", schemadef)
     assert_equal(1, result)
     result = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef("StoreID", schemadef)
     assert_equal(1, result)
     result = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef("RequestType", schemadef)
     assert_equal(1, result)
     result = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef("orderRequest", schemadef)
     assert_equal(1, result)
  end
  
  def test_tag_maxoccurs_minoccurs
    instance_of_object = [1,2,3]
    Soap4r2RubyHelpers::tag_minoccurs_maxoccurs(instance_of_object, 2, 3)
    assert_equal(2, instance_of_object.minoccurs)
    assert_equal(3, instance_of_object.maxoccurs)
  end
  
  def test_min_max_tagging_with_schemadef
    schemadef = Soap4r2RubyHelpers::get_schemadef_for_type_name(eval(@namespace+'::DiscountServiceRequestType'), @tool.mapping_registry, @tool.literal_mapping_registry)
    max = Soap4r2RubyHelpers::get_maxoccurs_from_name_and_schemadef("RequestDateTime", schemadef)
    assert_equal(1, max)
    min = Soap4r2RubyHelpers::get_minoccurs_from_name_and_schemadef("RequestDateTime", schemadef)
    assert_equal(0, min)
    result = eval(@tool.root_node.name).new 
    Soap4r2RubyHelpers::tag_minoccurs_maxoccurs(result, min, max)
    assert_equal(1, result.maxoccurs)
    assert_equal(0, result.minoccurs)
  end
  
   def test_min_max_tagger
     schemadef = Soap4r2RubyHelpers::get_schemadef_for_type_name(eval(@namespace+'::DiscountServiceRequestType'), @tool.mapping_registry, @tool.literal_mapping_registry)
     #load the object
     xml = File.open(File.dirname(File.expand_path(__FILE__)) + "/test/fixtures/sample_xmls/working_vdev_sample_request.xml").readlines.to_s
     obj = SaveLoadConvertHelpers::xml2obj(@tool, xml)
    assert_not_nil(obj)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, obj.class)
    assert_nil(obj.minoccurs)
    assert_nil(obj.maxoccurs)
    assert_equal(1,obj.orderRequest.minoccurs)
    assert_equal(1,obj.orderRequest.maxoccurs)
        
    obj = Soap4r2RubyHelpers::min_max_tagger(obj, @tool)    
    assert_not_nil(obj)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, obj.class)
    assert_nil(obj.minoccurs)
    assert_nil(obj.maxoccurs)
    assert_equal(1,obj.orderRequest.minoccurs)
    assert_equal(1,obj.orderRequest.maxoccurs)
  end  
  
    def test_min_max_empty_no_complex_types
      obj = MySoap::InterfaceOne::DiscountServiceRequestType.new("now", 1, "LIVE", nil)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(1, obj.storeID)
      assert_equal("LIVE", obj.requestType)        
      assert_equal(nil, obj.requestType.minoccurs)
      assert_equal(nil, obj.requestType.maxoccurs)
      obj = Soap4r2RubyHelpers::min_max_tagger(obj, @tool)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(0, obj.requestDateTime.minoccurs)
      assert_equal(1, obj.requestDateTime.maxoccurs)
      assert_equal(1, obj.storeID)
      assert_equal(0, obj.storeID.minoccurs)
      assert_equal(1, obj.storeID.maxoccurs)    
      assert_equal("LIVE", obj.requestType)
      assert_equal(0, obj.requestType.minoccurs)
      assert_equal(1, obj.requestType.maxoccurs) 
      assert_equal(nil, obj.orderRequest)
      # assert_equal(1, obj.orderRequest.minoccurs)
      # assert_equal(1, obj.orderRequest.maxoccurs)
    end
    
    def test_min_max_empty_with_complex_type
      obj = MySoap::InterfaceOne::DiscountServiceRequestType.new("now", 1, "LIVE", MySoap::InterfaceOne::OrderType.new)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(1, obj.storeID)
      assert_equal("LIVE", obj.requestType)        
      assert_equal(nil, obj.requestType.minoccurs)
      assert_equal(nil, obj.requestType.maxoccurs)
      obj = Soap4r2RubyHelpers::min_max_tagger(obj, @tool)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(0, obj.requestDateTime.minoccurs)
      assert_equal(1, obj.requestDateTime.maxoccurs)
      assert_equal(1, obj.storeID)
      assert_equal(0, obj.storeID.minoccurs)
      assert_equal(1, obj.storeID.maxoccurs)    
      assert_equal("LIVE", obj.requestType)
      assert_equal(0, obj.requestType.minoccurs)
      assert_equal(1, obj.requestType.maxoccurs) 
      assert_equal(MySoap::InterfaceOne::OrderType, obj.orderRequest.class)
      assert_equal(1, obj.orderRequest.minoccurs)
      assert_equal(1, obj.orderRequest.maxoccurs)
    end
    
    def test_min_max_empty_with_complex_type_and_subtypes 
      order = MySoap::InterfaceOne::OrderType.new(123, nil, nil, nil, nil, nil, [], [], [], nil)
      obj = MySoap::InterfaceOne::DiscountServiceRequestType.new("now", 1, "LIVE", order)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(1, obj.storeID)
      assert_equal("LIVE", obj.requestType)        
      assert_equal(nil, obj.requestType.minoccurs)
      assert_equal(nil, obj.requestType.maxoccurs)
      assert_equal(MySoap::InterfaceOne::OrderType, obj.orderRequest.class)
      assert_equal(nil, obj.orderRequest.minoccurs)
      assert_equal(nil, obj.orderRequest.maxoccurs)
      assert_equal(123, obj.orderRequest.orderID)
      assert_equal(nil, obj.orderRequest.minoccurs)
      assert_equal(nil, obj.orderRequest.maxoccurs)
      obj = Soap4r2RubyHelpers::min_max_tagger(obj, @tool)
      assert_not_nil(obj)
      assert_equal("now", obj.requestDateTime)
      assert_equal(0, obj.requestDateTime.minoccurs)
      assert_equal(1, obj.requestDateTime.maxoccurs)
      assert_equal(1, obj.storeID)
      assert_equal(0, obj.storeID.minoccurs)
      assert_equal(1, obj.storeID.maxoccurs)    
      assert_equal("LIVE", obj.requestType)
      assert_equal(0, obj.requestType.minoccurs)
      assert_equal(1, obj.requestType.maxoccurs) 
      assert_equal(MySoap::InterfaceOne::OrderType, obj.orderRequest.class)
      assert_equal(1, obj.orderRequest.minoccurs)
      assert_equal(1, obj.orderRequest.maxoccurs)
      assert_equal(123, obj.orderRequest.orderID)
      assert_equal(1, obj.orderRequest.minoccurs)
      assert_equal(1, obj.orderRequest.maxoccurs)
    end
     
     def test_min_max_empty_with_complex_type_and_subtypes_and_arrays
       promo1 = MySoap::InterfaceOne::PromotionType.new(1, "promotionCode1", 1, nil, nil, nil, nil)
       promo2 = MySoap::InterfaceOne::PromotionType.new(2, "promotionCode2", 2, nil, nil, nil, nil)
       promo3 = MySoap::InterfaceOne::PromotionType.new(3, "promotionCode3", 3, nil, nil, nil, nil)
       promotions = [promo1, promo2, promo3]
       order = MySoap::InterfaceOne::OrderType.new(123, nil, nil, nil, nil, nil, [], promotions, [], nil)
       obj = MySoap::InterfaceOne::DiscountServiceRequestType.new("now", 1, "LIVE", order)
       assert_not_nil(obj)
       assert_equal("now", obj.requestDateTime)
       assert_equal(1, obj.storeID)
       assert_equal("LIVE", obj.requestType)        
       assert_equal(nil, obj.requestType.minoccurs)
       assert_equal(nil, obj.requestType.maxoccurs)
       assert_equal(MySoap::InterfaceOne::OrderType, obj.orderRequest.class)
       assert_equal(nil, obj.orderRequest.minoccurs)
       assert_equal(nil, obj.orderRequest.maxoccurs)
       assert_equal(123, obj.orderRequest.orderID)
       assert_equal(nil, obj.orderRequest.minoccurs)
       assert_equal(nil, obj.orderRequest.maxoccurs)
       assert_equal(Array, obj.orderRequest.promotions.class)
       assert_equal(3, obj.orderRequest.promotions.size)
       assert_equal(nil, obj.orderRequest.promotions.maxoccurs)
       assert_equal(nil, obj.orderRequest.promotions.minoccurs)
       assert_equal("promotionCode1", obj.orderRequest.promotions[0].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[0].maxoccurs)
       assert_equal(nil, obj.orderRequest.promotions[0].minoccurs)
       assert_equal("promotionCode2", obj.orderRequest.promotions[1].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[1].maxoccurs)
       assert_equal(nil, obj.orderRequest.promotions[1].minoccurs)
       assert_equal("promotionCode3", obj.orderRequest.promotions[2].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[2].maxoccurs)
       assert_equal(nil, obj.orderRequest.promotions[2].minoccurs)
       obj = Soap4r2RubyHelpers::min_max_tagger(obj, @tool)
       assert_not_nil(obj)
       assert_equal("now", obj.requestDateTime)
       assert_equal(0, obj.requestDateTime.minoccurs)
       assert_equal(1, obj.requestDateTime.maxoccurs)
       assert_equal(1, obj.storeID)
       assert_equal(0, obj.storeID.minoccurs)
       assert_equal(1, obj.storeID.maxoccurs)    
       assert_equal("LIVE", obj.requestType)
       assert_equal(0, obj.requestType.minoccurs)
       assert_equal(1, obj.requestType.maxoccurs) 
       assert_equal(MySoap::InterfaceOne::OrderType, obj.orderRequest.class)
       assert_equal(1, obj.orderRequest.minoccurs)
       assert_equal(1, obj.orderRequest.maxoccurs)
       assert_equal(123, obj.orderRequest.orderID)
       assert_equal(1, obj.orderRequest.minoccurs)
       assert_equal(1, obj.orderRequest.maxoccurs)
       assert_equal(Array, obj.orderRequest.promotions.class)
       assert_equal(3, obj.orderRequest.promotions.size)
       assert_equal(nil, obj.orderRequest.promotions.maxoccurs)
       assert_equal(nil, obj.orderRequest.promotions.minoccurs)
       assert_equal("promotionCode1", obj.orderRequest.promotions[0].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[0].maxoccurs)
       assert_equal(0, obj.orderRequest.promotions[0].minoccurs)
       assert_equal("promotionCode2", obj.orderRequest.promotions[1].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[1].maxoccurs)
       assert_equal(0, obj.orderRequest.promotions[1].minoccurs)
       assert_equal("promotionCode3", obj.orderRequest.promotions[2].promotionCode)
       assert_equal(nil, obj.orderRequest.promotions[2].maxoccurs)
       assert_equal(0, obj.orderRequest.promotions[2].minoccurs)
    
     end
end