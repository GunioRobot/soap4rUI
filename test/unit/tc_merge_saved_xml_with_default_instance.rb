require 'rubygems'
require 'test/unit'
require 'yaml'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/soap4r2ruby'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_MergeSavedXmlWithDefaultInstance < Test::Unit::TestCase

  def setup
    @namespace = "MySoap::InterfaceOne"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/discountService-V1-0.2009.09.03.wsdl"
    @service_method = "applyDiscount"
    @test_client_folder = Dir.pwd + "/test/fixtures/temp_test_client"
    @previously_saved_xml = Dir.pwd + "/test/fixtures/sample_xmls/my_default_discount_2009.09.03.xml"

    file_cleanup

    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @wsdl)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @wsdl)
    assert_not_nil(result)
    root_node = result.find_root_node_for_method(@service_method)
    expected_root_node = eval(@namespace)::DiscountServiceRequestType
    assert_equal(expected_root_node, root_node)
    assert_equal(expected_root_node,result.build_default_input_instance_for_root_node(expected_root_node).class)

    @default_instance = result.build_default_input_instance_for_method(@service_method)

  end

  def teardown
    file_cleanup
  end

  def file_cleanup
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder)
  end

  def test_merge_discount_service_with_string
    @unmarshalled_instance = SaveLoadConvertHelpers::load_request_xml(@previously_saved_xml, @test_client_folder, @namespace, @wsdl, @service_method)

    assert_equal(true,@default_instance.respond_to?("orderRequest"))
    assert_equal(1,@default_instance.orderRequest.minoccurs)
    assert_equal(1,@default_instance.orderRequest.maxoccurs)
    assert_equal(true,@default_instance.orderRequest.respond_to?("brand"))
    assert_equal("",@default_instance.orderRequest.brand)
    assert_equal(0,@default_instance.orderRequest.brand.minoccurs)
    assert_equal(1,@default_instance.orderRequest.brand.maxoccurs)
    assert_equal(true,@default_instance.orderRequest.respond_to?("maxDiscountsAllowed"))
    assert_equal("",@default_instance.orderRequest.maxDiscountsAllowed)
    assert_equal(0,@default_instance.orderRequest.maxDiscountsAllowed.minoccurs)
    assert_equal(1,@default_instance.orderRequest.maxDiscountsAllowed.maxoccurs)
    assert_equal(Array,@default_instance.orderRequest.promotions.class)
    assert_equal(1,@default_instance.orderRequest.promotions.size)
    assert_equal(nil,@default_instance.orderRequest.promotions.minoccurs)
    assert_equal(nil,@default_instance.orderRequest.promotions.maxoccurs)
    assert_equal(MySoap::InterfaceOne::PromotionType,@default_instance.orderRequest.promotions.first.class)
    assert_equal(0,@default_instance.orderRequest.promotions.first.minoccurs)
    assert_equal(nil,@default_instance.orderRequest.promotions.first.maxoccurs)
    assert_equal(Array,@default_instance.orderRequest.promotions.first.promoUsages.class)
    assert_equal(1,@default_instance.orderRequest.promotions.first.promoUsages.size)
    assert_equal(0,@default_instance.orderRequest.promotions.first.promoUsages.first.minoccurs)
    assert_equal(nil,@default_instance.orderRequest.promotions.first.promoUsages.first.maxoccurs)
    assert_equal(MySoap::InterfaceOne::PromoUsageType,@default_instance.orderRequest.promotions.first.promoUsages.first.class)

    assert_equal(true,@unmarshalled_instance.respond_to?("orderRequest"))
    assert_equal(1,@unmarshalled_instance.orderRequest.minoccurs)
    assert_equal(1,@unmarshalled_instance.orderRequest.maxoccurs)
    assert_equal(true,@unmarshalled_instance.orderRequest.respond_to?("brand"))
    assert_equal("Gap",@unmarshalled_instance.orderRequest.brand)
    assert_equal(0,@unmarshalled_instance.orderRequest.brand.minoccurs)
    assert_equal(1,@unmarshalled_instance.orderRequest.brand.maxoccurs)
    assert_equal(true,@unmarshalled_instance.orderRequest.respond_to?("maxDiscountsAllowed"))
    assert_equal("",@unmarshalled_instance.orderRequest.maxDiscountsAllowed)
    assert_equal(0,@unmarshalled_instance.orderRequest.maxDiscountsAllowed.minoccurs)
    assert_equal(1,@unmarshalled_instance.orderRequest.maxDiscountsAllowed.maxoccurs)
    assert_equal(Array,@unmarshalled_instance.orderRequest.promotions.class)
    assert_equal(1,@unmarshalled_instance.orderRequest.promotions.size)
    assert_equal(nil,@unmarshalled_instance.orderRequest.promotions.minoccurs)
    assert_equal(nil,@unmarshalled_instance.orderRequest.promotions.maxoccurs)
    assert_equal(MySoap::InterfaceOne::PromotionType,@default_instance.orderRequest.promotions.first.class)
    assert_equal(0,@unmarshalled_instance.orderRequest.promotions.first.minoccurs)
    assert_equal(nil,@unmarshalled_instance.orderRequest.promotions.first.maxoccurs)
    assert_equal(Array,@unmarshalled_instance.orderRequest.promotions.first.promoUsages.class)
    assert_equal(1,@unmarshalled_instance.orderRequest.promotions.first.promoUsages.size)
    assert_equal(0,@unmarshalled_instance.orderRequest.promotions.first.promoUsages.first.minoccurs)
    assert_equal(nil,@unmarshalled_instance.orderRequest.promotions.first.promoUsages.first.maxoccurs)
    assert_equal(MySoap::InterfaceOne::PromoUsageType,@unmarshalled_instance.orderRequest.promotions.first.promoUsages.first.class)

  end

end