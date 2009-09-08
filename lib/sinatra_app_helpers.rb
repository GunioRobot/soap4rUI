require File.dirname(File.expand_path(__FILE__)) + '/soap4r2ruby'
require 'wsdl/soap/wsdl2ruby'
require 'yaml'

module SinatraAppHelpers

  def self.update(params, driver)
    folder = params['client']
    curr = Dir.pwd
    begin
      Dir.chdir(folder)
      driver_file =(Dir.entries(folder) - [".", "..", ".svn"]).select{|e| e.to_s.include?'Driver.rb'}.first
      require folder+"/"+driver_file
    ensure
      Dir.chdir curr
    end
      @input = YAML.load params['input'] #prepopulate with original values
      default_instance = driver.build_default_input_instance_for_method(params['service_method']) 
      @input = Soap4r2RubyHelpers::mergeDefaultInstanceWithUnMarshalledValues(default_instance, @input)
      (params.keys - ["input", :splat, "action"]).sort.each do |e|      
        es = e.to_array
        #since yaml turns everything to strings make sure occurences turn back into Numbers properly
        # to_i on nil gives zero not nil
        if((es.include?('.minoccurs') || es.include?('.maxoccurs')) and (eval("params[e]") != ''))
          eval("#{es} = params[e].to_i")
        elsif(eval("params[e]") == '')
          eval("#{es} = nil")
        else
          eval("#{es} = params[e]")
        end 
      end
      params['input'] = @input #restore updated values
      params
  end
  
  def self.create_element(input, element)
    @input = input
    # free deep copy using marshal 
    eval "#{element} += [Marshal.load(Marshal.dump(#{element}.first))]"
    @input
  end
  
  def self.remove_element(input, element)
    @input = input
    if(eval "#{element}.size > 1")
      eval "#{element} -= [#{element}.last]"
    end  
    @input
  end
      
  #convert the form into a request to the server and send it
  def self.send_request(input,service_method, client, namespace, wsdl, endpoint="", username="", password="")
    driver = Soap4r2Ruby.new(client, namespace, wsdl)
    port_type = driver.port_type
    obj = eval(namespace+"::"+port_type.name.name).send(:new, endpoint)
	  obj.wiredump_dev = STDERR
    m = Soap4r2RubyHelpers::get_method_descriptor_for_name(service_method, driver.service_method_descriptors)
    io_methods = m.select{|e| e.class == Array}.first
    inputs = io_methods.select{|e| e.first == "in"}.map{|e| e[1]}
    # obj.wiredump_dev = File.new("err.log", "w+")
    if(endpoint != "" && username != "" && password != "")
      obj.options["protocol.http.basic_auth"] << [endpoint, username, password]     
    end

    if input.class.constants.include?("RUNTIME_GEN")
      @result = obj.send(service_method,*(inputs.map{|e| input.instance_variable_get("@"+e)}))      
    else
      @result = obj.send(service_method,input)      
    end
  end


end
