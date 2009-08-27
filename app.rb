require 'rubygems'
require File.dirname(File.expand_path(__FILE__))+'/vendor/frozen.rb'
require 'sinatra'
require 'haml'
require 'yaml'
gem 'soap4r'

require File.dirname(File.expand_path(__FILE__))+'/lib/sinatra_app_helpers'

get '/**' do
  #start page to select the wsdl
  haml :choose_wsdl
end

post '/generate' do
  @curr = nil
  @namespace = nil
  @folder_name = nil
  @driver_file = nil
  @client = nil
  if @params[:action] == 'Upload'
    File.open("public/saved_forms/requests/#{@params['datafile'][:filename]}", "w+").syswrite(@params["datafile"][:tempfile].readlines)
    @params[:wsdl] = Dir.pwd.to_s + "/public/saved_forms/requests/#{@params['datafile'][:filename]}"
  end
  @wsdl = @params[:wsdl]
  @ast = nil
  @curr = Dir.pwd
  @namespace ="MySoap::Interface" + rand(Time.now.to_i).to_s
  @folder_name = "public/generated_clients/" + (File.basename(@params[:wsdl].gsub('.wsdl',''))) + "_" + Time.now.to_i.to_s + "_"  + rand(Time.now.to_i).to_s
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
  @saved_requests = Dir.entries(Dir.pwd + "/public/saved_forms/requests/").grep(/\.xml$/)
  @saved_responses = Dir.entries(Dir.pwd + "/public/saved_forms/responses/").grep(/\.xml$/)
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
  @saved_requests = Dir.entries(Dir.pwd + "/public/saved_forms/requests/").grep(/\.xml$/)
  @saved_responses = Dir.entries(Dir.pwd + "/public/saved_forms/responses/").grep(/\.xml$/)
    
  if @params[:action] == 'Submit'
    @input = SinatraAppHelpers::send_request(@input,@service_method, @client, @namespace, @wsdl, @endpoint)
    return haml :result
  elsif @params[:action] == 'SaveRequest'
    SaveLoadConvertHelpers::save_request_xml(@input, "public/saved_forms/requests/"+@params["file_name"], @client, @namespace, @wsdl)
  elsif @params[:action] == 'DeleteRequest'
    SaveLoadConvertHelpers::del_request_xml(@params["file_name"])
  elsif @params[:action] == 'SaveResponse'
    SaveLoadConvertHelpers::save_request_xml(@input, "public/saved_forms/responses/"+@params["file_name"], @client, @namespace, @wsdl)
    return haml :result
  elsif @params[:action] == 'DeleteResponse'
    SaveLoadConvertHelpers::del_response_xml(@params["file_name"])
    return haml :result
  elsif @params[:action] == 'LoadRequest'
    @params['input'] = SaveLoadConvertHelpers::load_request_xml("public/saved_forms/requests/"+@params["file_name"], @client, @namespace, @wsdl)
    @input = @params['input']
  elsif @params[:action] == 'Upload'
    File.open("public/saved_forms/requests/#{@params['datafile'][:filename]}", "w+").syswrite(@params["datafile"][:tempfile].readlines)
    @params['input'] = SaveLoadConvertHelpers::load_request_xml("public/saved_forms/requests/#{@params['datafile'][:filename]}", @client, @namespace, @wsdl)
    @input = @params['input']
  elsif @params[:action] == 'Add'
    @input = SinatraAppHelpers::create_element(@input, @params[:element])
  elsif @params[:action] == 'Del'
    @input = SinatraAppHelpers::remove_element(@input, @params[:element])
  end
    @saved_requests = Dir.entries(Dir.pwd + "/public/saved_forms/requests/").grep(/\.xml$/)
    @saved_responses = Dir.entries(Dir.pwd + "/public/saved_forms/responses/").grep(/\.xml$/)
    haml :client
end

