require 'rubygems'
require 'test/unit'
require 'yaml'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/soap4r2ruby'
require File.dirname(File.expand_path(__FILE__)) + '/../../lib/sinatra_app_helpers'

class TC_AwsElasticComputeCompatibility < Test::Unit::TestCase

  def setup
    @namespace = "MySoap::InterfaceOne"
    @wsdl = Dir.pwd + "/test/fixtures/sample_wsdls/ElasticMapReduce.wsdl"
    @service_method = "runJobFlow"
    @test_client_folder = Dir.pwd + "/test/fixtures/temp_test_client"

    file_cleanup

    GeneratorHelpers::generate_ruby_classes(@test_client_folder, @namespace, @wsdl)
    @driver = Soap4r2Ruby.new(@test_client_folder, @namespace, @wsdl)

  end

  def teardown
    file_cleanup
  end

  def file_cleanup
#    GeneratorHelpers::cleanup_generated_ruby_classes(@test_client_folder)
  end

  def test_runJobFlow_default_instance_building
    assert_not_nil(@driver)
    root_node = @driver.find_root_node_for_method(@service_method)
    expected_root_node = eval(@namespace)::RunJobFlow
    assert_equal(expected_root_node, root_node)
    assert_equal(expected_root_node,@driver.build_default_input_instance_for_root_node(expected_root_node).class)

    @default_instance = @driver.build_default_input_instance_for_method(@service_method)

    assert_equal(true,@default_instance.respond_to?("name"))
    assert_equal(true,@default_instance.respond_to?("logUri"))
    assert_equal(true,@default_instance.respond_to?("instances"))
    assert_equal(true,@default_instance.respond_to?("steps"))

    assert_equal(String,@default_instance.name.class)
    assert_equal(1,@default_instance.name.minoccurs)
    assert_equal(1,@default_instance.name.maxoccurs)

    assert_equal(String,@default_instance.logUri.class)
    assert_equal(0,@default_instance.logUri.minoccurs)
    assert_equal(1,@default_instance.logUri.maxoccurs)

    assert_equal(eval(@namespace)::JobFlowInstancesConfig,@default_instance.instances.class)
    assert_equal(1,@default_instance.instances.minoccurs)
    assert_equal(1,@default_instance.instances.maxoccurs)

    assert_equal(true,@default_instance.instances.respond_to?("masterInstanceType"))
    assert_equal(true,@default_instance.instances.respond_to?("slaveInstanceType"))
    assert_equal(true,@default_instance.instances.respond_to?("instanceCount"))
    assert_equal(true,@default_instance.instances.respond_to?("ec2KeyName"))
    assert_equal(true,@default_instance.instances.respond_to?("placement"))
    assert_equal(true,@default_instance.instances.respond_to?("keepJobFlowAliveWhenNoSteps"))


#      <xs:complexType name="StepConfigList">
#        <xs:sequence>
#          <xs:element name="member" type="tns:StepConfig" maxOccurs="unbounded"/>
#        </xs:sequence>
#      </xs:complexType>
    assert_equal(eval(@namespace)::StepConfigList,@default_instance.steps.class)
    assert_equal(0,@default_instance.steps.minoccurs)
    assert_equal(1,@default_instance.steps.maxoccurs)

    assert_equal(true,@default_instance.steps.respond_to?("[]"))
    assert_equal(1,@default_instance.steps.size)

    assert_equal(eval(@namespace)::StepConfig,@default_instance.steps.first.class)
    assert_equal(1,@default_instance.steps.first.minoccurs)
    assert_equal(nil,@default_instance.steps.first.maxoccurs)

#      <xs:complexType name="StepConfig">
#        <xs:sequence>
#          <xs:element name="Name" type="tns:StepConfigName"/>
#          <xs:element name="ActionOnFailure" type="tns:ActionOnFailure" minOccurs="0"/>
#          <xs:element name="HadoopJarStep" type="tns:HadoopJarStepConfig"/>
#        </xs:sequence>
#      </xs:complexType>
    assert_equal(true,@default_instance.steps.first.respond_to?("name"))
    assert_equal(true,@default_instance.steps.first.respond_to?("actionOnFailure"))
    assert_equal(true,@default_instance.steps.first.respond_to?("hadoopJarStep"))

  end

   def test_describeJobFlow_default_instance_building

#      <xs:element name="DescribeJobFlows">
#        <xs:complexType>
#          <xs:sequence>
#          <xs:element name="CreatedAfter" type="xs:dateTime" minOccurs="0"/>
#          <xs:element name="CreatedBefore" type="xs:dateTime" minOccurs="0"/>
#          <xs:element name="JobFlowIds" type="tns:StringList" minOccurs="0"/>
#          <xs:element name="JobFlowStates" type="tns:JobFlowExecutionStateList" minOccurs="0"/>
#          </xs:sequence>
#        </xs:complexType>
#      </xs:element>

     @service_method = 'describeJobFlows'
    assert_not_nil(@driver)
    root_node = @driver.find_root_node_for_method(@service_method)
    expected_root_node = eval(@namespace)::DescribeJobFlows
    assert_equal(expected_root_node, root_node)
    assert_equal(expected_root_node,@driver.build_default_input_instance_for_root_node(expected_root_node).class)

    @default_instance = @driver.build_default_input_instance_for_method(@service_method)
    assert_equal(true,@default_instance.respond_to?("createdAfter"))
    assert_equal(true,@default_instance.respond_to?("createdBefore"))
    assert_equal(true,@default_instance.respond_to?("jobFlowIds"))
    assert_equal(true,@default_instance.respond_to?("jobFlowStates"))

    assert_equal(String,@default_instance.createdAfter.class)
    assert_equal(0,@default_instance.createdAfter.minoccurs)
    assert_equal(1,@default_instance.createdAfter.maxoccurs)

    assert_equal(String,@default_instance.createdBefore.class)
    assert_equal(0,@default_instance.createdBefore.minoccurs)
    assert_equal(1,@default_instance.createdBefore.maxoccurs)

    assert_equal(eval(@namespace)::StringList,@default_instance.jobFlowIds.class)
    assert_equal(0,@default_instance.jobFlowIds.minoccurs)
    assert_equal(1,@default_instance.jobFlowIds.maxoccurs)

#      <xs:complexType name="JobFlowExecutionStateList">
#        <xs:sequence>
#          <xs:element name="member" type="tns:JobFlowExecutionState" maxOccurs="unbounded"/>
#        </xs:sequence>
#      </xs:complexType>
    assert_equal(eval(@namespace)::JobFlowExecutionStateList,@default_instance.jobFlowStates.class)
    assert_equal(0,@default_instance.jobFlowStates.minoccurs)
    assert_equal(1,@default_instance.jobFlowStates.maxoccurs)

    assert_equal(true,@default_instance.jobFlowStates.respond_to?("[]"))
    assert_equal(1,@default_instance.jobFlowStates.size)
    assert_equal(String,@default_instance.jobFlowStates.first.class)
    assert_equal("",@default_instance.jobFlowStates.first)
    assert_equal(1,@default_instance.jobFlowStates.first.minoccurs)
    assert_equal(nil,@default_instance.jobFlowStates.first.maxoccurs)


#    assert_equal(true,@default_instance.jobFlowStates.respond_to?("member_"))
#    assert_equal(Array,@default_instance.jobFlowStates.member_.class)
#    assert_equal(1,@default_instance.jobFlowStates.member_.size)
#    assert_equal(String,@default_instance.jobFlowStates.member_.first.class)
#    assert_equal("",@default_instance.jobFlowStates.member_.first)
#    assert_equal(nil,@default_instance.jobFlowStates.member_.minoccurs)
#    assert_equal(nil,@default_instance.jobFlowStates.member_.maxoccurs)

  end
end