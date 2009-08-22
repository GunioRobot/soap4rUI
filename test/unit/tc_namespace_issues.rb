require 'rubygems'
require 'test/unit'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_NamespaceIssues < Test::Unit::TestCase
  
  def setup
    @test_client_folder1 = Dir.pwd+ "/test/fixtures/temp_EncryptionService-V1-0"
    @test_client_folder2 = Dir.pwd+ "/test/fixtures/temp_latest_discountService-V1-0"
    @wsdl1 = Dir.pwd+ "/test/fixtures/sample_wsdls/EncryptionService-V1-0.wsdl"
    @wsdl2 = Dir.pwd+ "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"

    @namespace1 = "MySoap::Interface"
    @namespace2 = "MySoap::Interface"
  end
  
  def teardown
    file_cleanup
  end  

  def file_cleanup
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder1)
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder2)
  end
  
  def test_wsdl2ruby_generator
    GeneratorHelpers::generate_ruby_classes(@test_client_folder1, @namespace1, @wsdl1)
    result = Soap4r2Ruby.new(@test_client_folder1, @namespace1, @wsdl1)
    assert_not_nil(result)
    assert_equal("retrieve", result.service_method_names[1])
    assert_equal(4, result.service_method_names.size)
    assert_equal(4, result.service_method_descriptors.size)
    
    GeneratorHelpers::generate_ruby_classes(@test_client_folder2, @namespace2, @wsdl2)
    result = Soap4r2Ruby.new(@test_client_folder2, @namespace2, @wsdl2)
    assert_not_nil(result)
    assert_equal("applyDiscount", result.service_method_names[1])
    assert_equal(2, result.service_method_names.size)
    assert_equal(2, result.service_method_descriptors.size)
  end
  
end