require 'rubygems'
require 'test/unit'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_Mpc1ServiceNames < Test::Unit::TestCase
  
  def setup
    @settlement = Dir.pwd + "/test/fixtures/sample_wsdls/PromotionSettlementService.wsdl"
    @validation = Dir.pwd + "/test/fixtures/sample_wsdls/PromoValidationService.wsdl"
    @usage = Dir.pwd + "/test/fixtures/sample_wsdls/PromotionUsageService-V1-0.wsdl"
    @eligibility = Dir.pwd + "/test/fixtures/sample_wsdls/EligibilityService.wsdl"
    @discount = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    @google = Dir.pwd + "/test/fixtures/sample_wsdls/GoogleSearch.wsdl"

    @old_discount = Dir.pwd + "/test/fixtures/sample_wsdls/discountService-V1-0.wsdl" 
    @lcm_inventory = Dir.pwd + "/test/fixtures/sample_wsdls/IcmFindInventoryService-V1-0.wsdl"
    @find_inventory = Dir.pwd + "/test/fixtures/sample_wsdls/FindInventoryServiceV1-0.wsdl"
    
    
    @test_client_folder = Dir.pwd + "/test/fixtures/temp_test_client"
    @namespace = "MySoap::Interface"
  end  
  
  def teardown
    file_cleanup
  end  

  def file_cleanup
    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder)
  end
  
  def test_service_methods_and_names_for_settlement
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @settlement)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @settlement)
    assert_not_nil(result)
    assert_equal(3, result.service_method_names.size)
    assert_equal("serviceAlive", result.service_method_names[0].first)
    assert_equal("settlePromotionCodes", result.service_method_names[1].first)
    assert_equal("reversePromotionSettlement", result.service_method_names[2].first)
    
    assert_equal(MySoap::Interface::ServiceAliveRequestType, result.find_root_node_for_method("serviceAlive"))
    assert_equal(MySoap::Interface::SettlePromotionCodes, result.find_root_node_for_method("settlePromotionCodes"))
    assert_equal(MySoap::Interface::ReversePromotionSettlement, result.find_root_node_for_method("reversePromotionSettlement"))
        
  end
  def test_service_methods_and_names_for_validation
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @validation)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @validation)
    assert_not_nil(result)
    assert_equal(1, result.service_method_names.size)
    assert_equal("validateCreditCard", result.service_method_names[0].first)   
    assert_equal(MySoap::Interface::CreditCardValidationRequest, result.find_root_node_for_method("validateCreditCard"))   
  end
  
  def test_service_methods_and_names_for_usage
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @usage)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @usage)
    assert_not_nil(result)
    assert_equal(2, result.service_method_names.size)
    assert_equal("serviceAlive", result.service_method_names[0].first)       
    assert_equal("getPromotionUsages", result.service_method_names[1].first)  
    assert_equal(MySoap::Interface::ServiceAliveRequestType, result.find_root_node_for_method("serviceAlive"))
    assert_equal(MySoap::Interface::PromotionUsageRequestType, result.find_root_node_for_method("getPromotionUsages"))     
  
  end  
  def test_service_methods_and_names_for_eligibility
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @eligibility)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @eligibility)
    assert_not_nil(result)
    assert_equal(1, result.service_method_names.size)
    assert_equal("getEligibilityForCode", result.service_method_names[0].first)    
    assert_equal(MySoap::Interface::EligibilityRequest, result.find_root_node_for_method("getEligibilityForCode"))   
  end
  def test_service_methods_and_names_for_discount
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @discount)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @discount)
    assert_not_nil(result)
    assert_equal(2, result.service_method_names.size)
    assert_equal("serviceAlive", result.service_method_names[0].first)       
    assert_equal("applyDiscount", result.service_method_names[1].first)     
    assert_equal(MySoap::Interface::ServiceAliveRequestType, result.find_root_node_for_method("serviceAlive"))
    assert_equal(MySoap::Interface::DiscountServiceRequestType, result.find_root_node_for_method("applyDiscount")) 
  end
  
  def test_service_methods_and_names_for_google
      GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @google)
      result = Soap4r2Ruby.new(@test_client_folder, @namespace, @google)
      assert_not_nil(result)
      assert_equal(3, result.service_method_names.size)
      assert_equal("doGetCachedPage", result.service_method_names[0].first)       
      assert_equal("doSpellingSuggestion", result.service_method_names[1].first)       
      assert_equal("doGoogleSearch", result.service_method_names[2].first)      
      assert_equal("a", result.find_root_node_for_method("doGetCachedPage"))
      assert_equal("a", result.find_root_node_for_method("doSpellingSuggestion"))
      assert_equal("a", result.find_root_node_for_method("doGoogleSearch")) 
    end
  
  def test_service_methods_and_names_for_old_discount
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @old_discount)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @old_discount)
    assert_not_nil(result)
    assert_equal(2, result.service_method_names.size)
    assert_equal("serviceAlive", result.service_method_names[0].first)       
    assert_equal("applyDiscount", result.service_method_names[1].first)     
    assert_equal(MySoap::Interface::ServiceAliveRequestType, result.find_root_node_for_method("serviceAlive"))
    assert_equal(MySoap::Interface::DiscountServiceRequestType, result.find_root_node_for_method("applyDiscount")) 
  end
  
  def test_service_methods_and_names_for_lcm_inventory
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @lcm_inventory)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @lcm_inventory)
    assert_not_nil(result)
    assert_equal(3, result.service_method_names.size)
    assert_equal("findInventory", result.service_method_names[0].first)       
    assert_equal("findInventoryByDC", result.service_method_names[1].first)     
    assert_equal("findGlobalInventory", result.service_method_names[2].first)         
    assert_equal(MySoap::Interface::FindInventoryRequest, result.find_root_node_for_method("findInventory"))
    assert_equal(MySoap::Interface::FindInventoryByDCRequest, result.find_root_node_for_method("findInventoryByDC")) 
    assert_equal(MySoap::Interface::FindGlobalInventoryRequestType, result.find_root_node_for_method("findGlobalInventory")) 
  end
 
  def test_service_methods_and_names_for_find_inventory
    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @find_inventory)
    result = Soap4r2Ruby.new(@test_client_folder, @namespace, @find_inventory)
    assert_not_nil(result)
    assert_equal(2, result.service_method_names.size)
    assert_equal("findInventory", result.service_method_names[0].first)       
    assert_equal("isServiceAlive", result.service_method_names[1].first)     
    assert_equal(MySoap::Interface::FindInventoryRequestDTO, result.find_root_node_for_method("findInventory"))
    assert_equal('', result.find_root_node_for_method("isServiceAlive")) 
  end
  

end