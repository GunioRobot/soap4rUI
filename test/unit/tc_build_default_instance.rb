require 'rubygems'
require 'test/unit'
require 'mocha'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TCBuildDefaultInstance < Test::Unit::TestCase
  
  def setup
    @google = Dir.pwd + "/test/fixtures/sample_wsdls/GoogleSearch.wsdl"   
    @discount = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    
    @test_client_folder = Dir.pwd + "/test/fixtures/temp_test_client"
    @namespace = "MySoap::Interface"
  end  
  
  def teardown
    file_cleanup
  end  
  
  def file_cleanup
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder)
  end
  
  
  def test_build_default_input_instance_for_root_node_when_simple_soap_type
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @google)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @google)
    assert_not_nil(result)
    root_node = result.find_root_node_for_method("doGoogleSearch")
    expected_root_node = eval(@namespace)::DoGoogleSearch
    assert_equal(expected_root_node, root_node)
    assert_equal(expected_root_node,result.build_default_input_instance_for_root_node(expected_root_node).class)
    assert_equal(true,result.build_default_input_instance_for_root_node(expected_root_node).respond_to?("key"))
    assert_equal(nil,result.build_default_input_instance_for_root_node(expected_root_node).key)
  end
  
  def test_build_default_input_instance_for_root_node_when_complex_type
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @discount)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @discount)
    assert_not_nil(result)
    assert_equal(eval(@namespace)::DiscountServiceRequestType, result.find_root_node_for_method("applyDiscount"))
    assert_equal(eval(@namespace)::DiscountServiceRequestType,result.build_default_input_instance_for_root_node(eval(@namespace)::DiscountServiceRequestType).class)
    assert_equal(true,result.build_default_input_instance_for_root_node(eval(@namespace)::DiscountServiceRequestType).respond_to?("orderRequest"))
    assert_equal("",result.build_default_input_instance_for_root_node(eval(@namespace)::DiscountServiceRequestType).orderRequest.brand)
    
  end
end