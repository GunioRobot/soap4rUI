require 'rubygems'
require File.dirname(File.expand_path(__FILE__))+'/vendor/frozen.rb'
require 'sinatra'
require 'haml'
require 'yaml'
gem 'soap4r'

require File.dirname(File.expand_path(__FILE__))+'/lib/sinatra_app_helpers'


#on restart clear out the generated clients
%x{rake maintenance:clean}
#start page to select the wsdl
get '/**' do
  haml :choose_wsdl
end

post '/generate' do
  @curr = nil
  @namespace = nil
  @folder_name = nil
  @driver_file = nil
  @client = nil
  @wsdl = @params[:wsdl]
  @ast = nil
  @curr = Dir.pwd
  @namespace ="MySoap::Interface" + rand(Time.now.to_i).to_s
  @folder_name = "generated_clients/" + (File.basename(@params[:wsdl].gsub('.wsdl',''))) + "_" + Time.now.to_i.to_s + "_"  + rand(Time.now.to_i).to_s
  
  @driver_file = GeneratorHelpers::generate_ruby_classes(@folder_name, @namespace, @params[:wsdl])

  @client = @curr + "/" + @folder_name
  @ast = Soap4r2Ruby.new(@client, @namespace, @wsdl)
  #show drop down list to select the method to test  
  haml :select
end

#show a class attributes as a form
post '/build' do
  @client = @params[:client]
  @namespace = @params[:namespace]
  @service_method = @params[:method]
  @wsdl = @params[:wsdl]
  tool = Soap4r2Ruby.new(@params[:client],@params[:namespace],@params[:wsdl])
  
  @input = tool.build_default_input_instance_for_method(@params[:method]) 
  @endpoint = tool.default_endpoint
  haml :client
end

post '/update' do
  @client = @params[:client]
  @wsdl = @params[:wsdl]
  @namespace = @params[:namespace]
  @service_method = @params[:service_method]
  @endpoint = @params[:endpoint]
  @params = SinatraAppHelpers::update @params
  @input = @params['input']
  
  if @params[:action] == 'Submit'
    @input = SinatraAppHelpers::send_request(@input,@service_method, @client, @namespace, @wsdl, @endpoint)
    # tool = Soap4r2Ruby.new(@params[:client],@params[:namespace])
    # port_type = tool.port_type
    # driver_file = tool.driver_file
    # @result = SaveLoadConvertHelpers::obj2xml(@client, driver_file, @namespace, port_type, response)
    # puts @result
        # require 'ruby-debug'; debugger
    #@result = File.open("test/fixtures/sample_xmls/working_vdev_sample_request.xml").readlines.to_s
    # content_type 'text/xml', :charset => 'utf-8'
    haml :result
  elsif @params[:action] == 'Save'
    # SaveLoadConvertHelpers::save_request_as_yaml(@params,"saved_forms/"+@params["file_name"]+".yml")  
    SaveLoadConvertHelpers::save_request_xml(@input, "saved_forms/"+@params["file_name"]+".xml", @client, @namespace, @wsdl)
    haml :client
  elsif @params[:action] == 'Load'
    #@params = SaveLoadConvertHelpers::load_request_from_yaml("saved_forms/"+@params["file_name"]+".yml")
    @params['input'] = SaveLoadConvertHelpers::load_request_xml("saved_forms/"+@params["file_name"]+".xml", @client, @namespace, @wsdl)
    @input = @params['input']
    haml :client
  elsif @params[:action] == 'Add'
    @input = SinatraAppHelpers::create_element(@input, @params[:element])
    haml :client
  elsif @params[:action] == 'Del'
    @input = SinatraAppHelpers::remove_element(@input, @params[:element])
    haml :client  
  end  
end

