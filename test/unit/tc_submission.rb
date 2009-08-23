require 'rubygems'
require 'test/unit'
require 'mocha'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_Submission < Test::Unit::TestCase


  def setup
    @client_folder = Dir.pwd + "/test/fixtures/client_namespace"
    @test_client_folder = Dir.pwd + "/test/fixtures/test_client"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/latest_discountService-V1-0.wsdl"
    
    @namespace = "MySoap::InterfaceOne"
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

  def test_send_request_default_endpoint
    #create the sample input
    @input = {}
    @input= YAML.load(File.open(Dir.pwd + "/test/fixtures/params/input.yaml"))
    endpoint = nil
    service_method = "applyDiscount"
    namespace = 'MySoap::InterfaceOne'
    client = 'client_namespace'
    #ensure the xml sent to the server is correct and that it is to the correct server
    tool_mock = mock()
    port_mock = mock()
    port_qname_mock = mock()
    port_name = "DiscountServicePortType"
    driver_mock = mock()
    Soap4r2Ruby.expects(:new).with(client, namespace, @wsdl).returns(tool_mock)
    # alternate
    # tool_mock.expects(:rpc_driver).returns(driver_mock)
    # driver_mock.expects('wiredump_dev=').with(STDERR)
    # @result = driver_mock.expects(:send).with(service_method, @input).returns("success")
    tool_mock.expects(:port_type).returns(port_mock)
    port_mock.expects(:name).returns(port_qname_mock)
    port_qname_mock.expects(:name).returns(port_name)
    # require 'ruby-debug';debugger
    eval(namespace+"::"+port_name).expects(:new).returns(driver_mock)
    driver_mock.expects('wiredump_dev=')
    tool_mock.expects(:service_method_descriptors).with().returns([
    [ "serviceAlive",
      "serviceAlive",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "ServiceAliveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "applyDiscount",
      "applyDiscount",
      [ ["in", "input", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceRequest"]],
        ["out", "output", ["::SOAP::SOAPElement", "http://schemas.gid.gap.com/discountService/v1", "DiscountServiceResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MySoap::Interface::DiscountServiceFault"=>{:ns=>"http://services.gid.gap.com/discountService/v1", :encodingstyle=>"document", :namespace=>nil, :use=>"literal", :name=>"DiscountServiceFault"}} }
    ]
  ])
    driver_mock.expects(:send).with(service_method, @input).returns("success")
    #simulate sending the request
    @result = SinatraAppHelpers::send_request(@input,service_method, client, namespace, @wsdl, endpoint)
    assert_equal(@result, "success")
  end


end