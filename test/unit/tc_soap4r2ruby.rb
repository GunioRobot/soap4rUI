require 'rubygems'
require 'test/unit'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/soap4r2ruby'
class TC_Soap4r2ruby < Test::Unit::TestCase

  def setup
    @client_folder = Dir.pwd + "/test/fixtures/latest_client"
    @namespace = "MySoap::InterfaceTwo"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"

  end

  def test_soap4r2ruby_find_root_node
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @result.build_default_input_instance_for_method("applyDiscount")
    assert_not_nil(@result)
    assert_not_nil(@result.root_node)
    assert_equal(@namespace + "::DiscountServiceRequestType", @result.root_node.name)

    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @result.build_default_input_instance_for_method("serviceAlive")
    assert_not_nil(@result)
    assert_not_nil(@result.root_node)
    assert_equal(@namespace + "::ServiceAliveRequestType", @result.root_node.name)
  end

  def test_soap4r2ruby_default_instance_applyDiscount
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @result.build_default_input_instance_for_method("applyDiscount")
    assert_not_nil(@result)
    assert_not_nil(@result.default_instance)
    assert_equal(eval(@namespace+'::DiscountServiceRequestType'), @result.default_instance.class)
    assert_equal(["@requestDateTime", "@orderRequest", "@requestType", "@storeID"].sort, @result.default_instance.instance_variables.sort)
    assert_equal("", @result.default_instance.requestDateTime)
    assert_equal(0, @result.default_instance.requestDateTime.minoccurs)
    assert_equal(1, @result.default_instance.requestDateTime.maxoccurs)
    assert_equal("", @result.default_instance.requestType)
    assert_equal(0, @result.default_instance.requestType.minoccurs)
    assert_equal(1, @result.default_instance.requestType.maxoccurs)
    assert_equal("", @result.default_instance.storeID)
    assert_equal(0, @result.default_instance.storeID.minoccurs)
    assert_equal(1, @result.default_instance.storeID.maxoccurs)
    assert_equal(eval(@namespace+'::OrderType'), @result.default_instance.orderRequest.class)
    assert_equal(1, @result.default_instance.orderRequest.minoccurs)
    assert_equal(1, @result.default_instance.orderRequest.maxoccurs)
  end

  def test_soap4r2ruby_default_instance_applyDiscount_collection_subelements_unbounded
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @result.build_default_input_instance_for_method("applyDiscount")
    #test that we have an array of orderlineItems
    assert_equal(Array, @result.default_instance.orderRequest.orderLineItems.class)
    assert_equal(1, @result.default_instance.orderRequest.orderLineItems.size)
    assert_equal(0, @result.default_instance.orderRequest.orderLineItems[0].minoccurs)
    assert_equal(nil, @result.default_instance.orderRequest.orderLineItems[0].maxoccurs)
    #test that we have an array of awards
    assert_equal(Array, @result.default_instance.orderRequest.orderLineItems[0].awards.class)
    assert_equal(1, @result.default_instance.orderRequest.orderLineItems[0].awards.size)
    assert_equal(0, @result.default_instance.orderRequest.orderLineItems[0].awards[0].minoccurs)
    assert_equal(nil, @result.default_instance.orderRequest.orderLineItems[0].awards[0].maxoccurs)
    assert_equal(1, @result.default_instance.orderRequest.promotions[0].qualifyingTenders.size)
    assert_equal(0, @result.default_instance.orderRequest.promotions[0].qualifyingTenders[0].minoccurs)
    assert_equal(nil, @result.default_instance.orderRequest.promotions[0].qualifyingTenders[0].maxoccurs)
  end

  def test_soap4r2ruby_default_instance_serviceAlive
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @result.build_default_input_instance_for_method("serviceAlive")
    assert_not_nil(@result)
    assert_not_nil(@result.default_instance)
    assert_equal(eval(@namespace+'::ServiceAliveRequestType'), @result.default_instance.class)

  end

  def test_soap4r2ruby_get_port_type
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    assert_equal("DiscountServicePortType", @result.port_type.name.name)
  end

  def test_soap4r2ruby_get_endpoint
    @result = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    assert_equal("https://ws-mpc-store.vdev.gid.gap.com/DiscountServiceProvider-V1-0/services/DiscountService", @result.default_endpoint)
  end


end