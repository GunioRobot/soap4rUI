require 'rubygems'
require 'test/unit'
require 'mocha'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'


class TC_LoadingSaving < Test::Unit::TestCase
  
  def setup
    @client_folder = Dir.pwd + "/test/fixtures/client_namespace"
    @test_client_folder = Dir.pwd + "/test/fixtures/test_client"
    @namespace = "MySoap::InterfaceOne"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/discountService-V1-0.wsdl"
    @service_method = "applyDiscount"
    @tool = Soap4r2Ruby.new(@client_folder, @namespace, @wsdl)
    @tool.build_default_input_instance_for_method("applyDiscount")
    @params = {}
    @file = "temp32847ifuy87yu"
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
  def test_update_from_marshalled_yaml
    @params = {}#YAML.load(File.open(File.dirname(File.expand_path(__FILE__)) + "/test/fixtures/params/params.yaml"))
    @params['input'] = File.open(Dir.pwd + "/test/fixtures/params/input.yaml")
    @params['client'] = Dir.pwd + '/test/fixtures/client_namespace'
    @params['service_method'] = @service_method
    @result = nil
    @result = SinatraAppHelpers::update(@params, @tool)
    assert_not_nil(@result)
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result['input'].class)
    assert_not_nil(@result['input'].orderRequest)
    assert_not_nil(@result['input'].orderRequest.minoccurs)
    assert_equal(1, @result['input'].orderRequest.minoccurs)
    assert_not_nil(@result['input'].orderRequest.maxoccurs)
    assert_equal(1, @result['input'].orderRequest.maxoccurs)
  end

  def test_update_from_marshalled_yaml_with_form_elements
    @params = {}
    @params= YAML.load(File.open(Dir.pwd + "/test/fixtures/params/params_latest.yaml"))
    @params['client'] = Dir.pwd + '/test/fixtures/latest_client'
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    @tool = Soap4r2Ruby.new(@params['client'], @params['namespace'], @wsdl)
    @tool.build_default_input_instance_for_method("applyDiscount")
    @params['service_method'] = @service_method
    @result = nil
    @result = SinatraAppHelpers::update(@params, @tool)
    assert_not_nil(@result)
    assert_equal(MySoap::InterfaceTwo::DiscountServiceRequestType, @result['input'].class)
    assert_not_nil(@result['input'].orderRequest)
    assert_not_nil(@result['input'].orderRequest.minoccurs)
    assert_equal(1, @result['input'].orderRequest.minoccurs)
    assert_not_nil(@result['input'].orderRequest.maxoccurs)
    assert_equal(1, @result['input'].orderRequest.maxoccurs)
  end  

  def test_save_request_to_yaml
    #load a request example
    @input = YAML.load(File.open(Dir.pwd + "/test/fixtures/params/input.yaml"))
    @input.orderRequest.promotions[0].discountReasonCode="something"
    assert_not_nil @input
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @input.class)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal("something", @input.orderRequest.promotions[0].discountReasonCode)
    #save the request
    SaveLoadConvertHelpers::save_request_as_yaml(@input, @file)
    #assert that the yaml was saved
    assert_not_nil(File.open(@file))    
  end

  def test_load_request_from_yaml
    #create the sample input
    @input = YAML.load(File.open(Dir.pwd + "/test/fixtures/params/input.yaml"))
    @input.orderRequest.promotions[0].discountReasonCode="something"
    assert_not_nil @input
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @input.class)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal("something", @input.orderRequest.promotions[0].discountReasonCode)
    #save the request
    SaveLoadConvertHelpers::save_request_as_yaml(@input, @file)
    #assert that the yaml was saved
    assert_not_nil(File.open(@file))
    #load the yaml
    @result = SaveLoadConvertHelpers::load_request_from_yaml(@file)    
    #assert that nothing has changed
    assert_not_nil @result
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    assert_equal(1, @result.orderRequest.promotions.size)
    assert_equal("something", @result.orderRequest.promotions[0].discountReasonCode)
  end

  def test_load_request_from_xml
    #create the sample input
    myfile = Dir.pwd + "/test/fixtures/sample_xmls/working_vdev_sample_request.xml"
    @input = SaveLoadConvertHelpers::load_request_xml(myfile, @client_folder, @namespace, @wsdl, @service_method)
    assert_not_nil @input
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @input.class)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal(nil, @input.orderRequest.promotions[0].discountReasonCode)
    # #save the request
    #   SinatraAppHelpers::save_request_as_xml(@input, @file)
    #   #assert that the yaml was saved
    #   assert_not_nil(File.open(@file))
    #   #load the yaml
    #   @result = SaveLoadConvertHelpers::load_request_from_yaml(@file)    
    #   #assert that nothing has changed
    #   assert_not_nil @result
    #   assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @result.class)
    #   assert_equal(1, @result.orderRequest.promotions.size)
    #   assert_equal("something", @result.orderRequest.promotions[0].discountReasonCode)
  end


  def test_save_request_as_xml
    #load a request example
    xml = (File.open(Dir.pwd + "/test/fixtures/sample_xmls/working_vdev_sample_request.xml")).readlines.to_s
    @input = SaveLoadConvertHelpers::xml2obj(@tool, xml, @service_method)
    assert_not_nil @input
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @input.class)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal(nil, @input.orderRequest.promotions[0].discountReasonCode)
    @input.orderRequest.promotions[0].discountReasonCode = "something"
    assert_equal("something", @input.orderRequest.promotions[0].discountReasonCode)
    #save the request

    SaveLoadConvertHelpers::save_request_xml(@input, @file, @client_folder, @namespace, @wsdl)
    #assert that the xml was saved
    assert_not_nil(File.open(@file))    
    #assert that the xml we saved matches the original

    # diff = String.diff(xml, File.open(@file).readlines.to_s)
    # assert_equal("", diff)
    # print diff
    # diff = diffs = Diff::LCS.diff(xml, File.open(@file).readlines.to_s)
    # assert_equal(xml, diff)
    xml = nil
    @input = nil
    #reload the file and assert that the changes were saved
    @input = SaveLoadConvertHelpers::load_request_xml(@file, @client_folder, @namespace, @wsdl, @service_method)
    assert_not_nil @input
    assert_equal(MySoap::InterfaceOne::DiscountServiceRequestType, @input.class)
    assert_equal(1, @input.orderRequest.promotions.size)
    assert_equal("something", @input.orderRequest.promotions[0].discountReasonCode)
  end
  
end