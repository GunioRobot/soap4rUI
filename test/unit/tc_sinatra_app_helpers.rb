require 'rubygems'
require 'test/unit'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_SinatraAppHelpers < Test::Unit::TestCase

  def setup
    @client_folder = Dir.pwd + "/test/fixtures/client_namespace"
    @test_client_folder = Dir.pwd + "/test/fixtures/test_client"
    @namespace = "MySoap::InterfaceOne"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/discountService-V1-0.wsdl"
    @service_method = "applyDiscount"
    @tool = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @tool.build_default_input_instance_for_method("applyDiscount")
    @params = {}
    @file = "temp32847ifuy87yu.xml"
    file_cleanup
  end

  def teardown
    file_cleanup
  end

  def file_cleanup
    #clean up the files left over from tests
    if Dir.entries( Dir.pwd ).include?(@file)
      File.delete(@file)
    end
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder)
  end

  def test_minoccurs_maxoccurs_after_marshalling_unmarshalling
    assert_not_nil(@tool.default_instance)
    assert_not_nil(@tool.default_instance.orderRequest)
    assert_not_nil(@tool.default_instance.orderRequest.minoccurs)
    assert_equal(1, @tool.default_instance.orderRequest.minoccurs)
    assert_not_nil(@tool.default_instance.orderRequest.maxoccurs)
    assert_equal(1, @tool.default_instance.orderRequest.maxoccurs)

    @result = YAML.load(@tool.default_instance.to_yaml)

    assert_not_nil(@result)
    assert_not_nil(@result.orderRequest)
    assert_not_nil(@result.orderRequest.minoccurs)
    assert_equal(1, @result.orderRequest.minoccurs)
    assert_not_nil(@result.orderRequest.maxoccurs)
    assert_equal(1, @result.orderRequest.maxoccurs)

  end


  def test_create_new_element_on_add
    @input = YAML.load(File.open(Dir.pwd + "/test/fixtures/params/input.yaml"))
    @input.orderRequest.promotions[0].discountReasonCode="something"
    @action = "@input.orderRequest.promotions"
    assert_equal("something", @input.orderRequest.promotions[0].discountReasonCode)

    @result = SinatraAppHelpers::create_element(@input, @action)
    assert_not_nil @result
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    assert_equal(2, @result.orderRequest.promotions.size)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[0].class)
    assert_equal("something", @result.orderRequest.promotions[0].discountReasonCode)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[1].class)
    assert_equal("something", @result.orderRequest.promotions[1].discountReasonCode)

    #make sure we did actually deep copy
    @result.orderRequest.promotions[0].discountReasonCode = "somethingElse"
    assert_equal("somethingElse", @result.orderRequest.promotions[0].discountReasonCode)
    assert_equal("something", @result.orderRequest.promotions[1].discountReasonCode)
  end

  def test_remove_element
    @input = YAML.load(File.open(Dir.pwd + "/test/fixtures/params/input.yaml"))
    @input.orderRequest.promotions[0].discountReasonCode="something"
    @action = "@input.orderRequest.promotions"
    @result = SinatraAppHelpers::create_element(@input, @action)
    assert_not_nil @result
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    assert_equal(2, @result.orderRequest.promotions.size)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[0].class)
    assert_equal("something", @result.orderRequest.promotions[0].discountReasonCode)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[1].class)
    assert_equal("something", @result.orderRequest.promotions[1].discountReasonCode)
    #make sure we did actually deep copy
    @result.orderRequest.promotions[0].discountReasonCode = "somethingElse"
    assert_equal("somethingElse", @result.orderRequest.promotions[0].discountReasonCode)
    assert_equal("something", @result.orderRequest.promotions[1].discountReasonCode)

    @result = SinatraAppHelpers::remove_element(@input, @action)
    assert_not_nil @result
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    assert_equal(1, @result.orderRequest.promotions.size)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[0].class)
    assert_equal("somethingElse", @result.orderRequest.promotions[0].discountReasonCode)


    @result = SinatraAppHelpers::remove_element(@input, @action)
    assert_not_nil @result
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    assert_equal(1, @result.orderRequest.promotions.size)
    assert_equal(MySoap::InterfaceOne::PromotionType, @result.orderRequest.promotions[0].class)
    assert_equal("somethingElse", @result.orderRequest.promotions[0].discountReasonCode)



  end

  def test_wsdl2ruby_generator
    wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    driver_file = GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, wsdl)
    assert_not_nil(driver_file)
    # assert(driver_file.to_s =~ /default[0-9]+Driver.rb/)
    assert_equal(3, (Dir.entries(@test_client_folder)-[".","..",".svn"]).size)
    assert_equal(["default.rb", "defaultDriver.rb", "defaultMappingRegistry.rb"], (Dir.entries(@test_client_folder)-[".","..",".svn"]).map{|e| e.to_s.sub(/[0-9]+/,'')})
  end

  def test_convert_instance_to_xml
    #load the object
    expected_xml = File.open(Dir.pwd + "/test/fixtures/sample_xmls/working_vdev_sample_request.xml").readlines.to_s
    expected_obj = SaveLoadConvertHelpers::xml2obj(@tool, expected_xml, @service_method)

    #test the object has what it needs
    assert_not_nil(expected_obj)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType,expected_obj.class)
    assert_not_nil(expected_obj.orderRequest)
    assert_equal(6,expected_obj.orderRequest.orderLineItems.size)
    assert_equal("1230005026",expected_obj.orderRequest.orderLineItems[5].product.sku)
    assert_not_nil(expected_obj.orderRequest.minoccurs)
    assert_equal(1, expected_obj.orderRequest.minoccurs)
    assert_not_nil(expected_obj.orderRequest.maxoccurs)
    assert_equal(1, expected_obj.orderRequest.maxoccurs)

    #reload the object
    xml = SaveLoadConvertHelpers::obj2xml(@tool, expected_obj)
    result_obj = SaveLoadConvertHelpers::xml2obj(@tool, xml, @service_method)

    #test that everything is still kosher
    assert_not_nil(result_obj)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType,expected_obj.class)
    assert_not_nil(expected_obj.orderRequest)
    assert_equal(6,expected_obj.orderRequest.orderLineItems.size)
    assert_equal("1230005026",expected_obj.orderRequest.orderLineItems[5].product.sku)
    assert_not_nil(result_obj.orderRequest.minoccurs)
    assert_equal(1, result_obj.orderRequest.minoccurs)
    assert_not_nil(result_obj.orderRequest.maxoccurs)
    assert_equal(1, result_obj.orderRequest.maxoccurs)

  end

  def test_convert_xml_to_instance
    expected_result = ""
    xml = File.open(Dir.pwd + "/test/fixtures/sample_xmls/working_vdev_sample_request.xml").readlines.to_s
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType,@tool.default_instance.class)
    result = SaveLoadConvertHelpers::xml2obj(@tool, xml, @service_method)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, result.class)
  end

  def test_update_nil_enums
    @params = YAML.load(File.open(Dir.pwd + "/test/fixtures/params/params2.yaml"))
    @params['client']= Dir.pwd + "/test/fixtures/latest_client"
    @params['namespace'] = "MySoap::InterfaceTwo"
    @params['wsdl'] = Dir.pwd + "/test/fixtures/sample_wsdls/latest-discountService-V1-0.wsdl"
    @params['service_method'] = @service_method
    @params = SinatraAppHelpers::update(@params, @tool)
    @input = @params['input']
    assert_not_nil(@input)
    assert_not_nil(@input.orderRequest)
    assert_equal(true, @input.orderRequest.respond_to?("qualifyType"))
    assert_equal("QUALIFY_WITH_TENDER", @input.orderRequest.qualifyType)
    assert_not_nil(@input.orderRequest.promotions)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal(true, @input.orderRequest.promotions[0].respond_to?("appliedStatus"))
    assert_equal(nil, @input.orderRequest.promotions[0].appliedStatus)
    assert_equal(true, @input.orderRequest.promotions[0].respond_to?("promotionID"))
    assert_equal(nil, @input.orderRequest.promotions[0].promotionID)
  end

end