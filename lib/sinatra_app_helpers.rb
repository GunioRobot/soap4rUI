require File.dirname(File.expand_path(__FILE__)) + '/soap4r2ruby'
require 'wsdl/soap/wsdl2ruby'

module SinatraAppHelpers

  def self.update(params)
    folder = params['client']
    curr = Dir.pwd
    Dir.chdir(folder)
    driver_file =(Dir.entries(folder) - [".", "..", ".svn"]).select{|e| e.to_s.include?'Driver.rb'}.first
    require folder+"/"+driver_file
    Dir.chdir(curr)
    @input = YAML.load params['input'] #prepopulate with original values
    (params.keys - ["input", :splat, "namespace", "client", "action", "Submit", "Save", "Load", "file_name"]).sort.each do |e|      
      es = e.to_array
      #since yaml turns everything to strings make sure occurences turn back into Numbers properly
      # to_i on nil gives zero not nil
      if((es.include?('.minoccurs') || es.include?('.maxoccurs')) and (eval("params[e]") != ''))
        eval("#{es} = params[e].to_i")
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
      
  #convert the form into a request to the server
  def self.send_request(input,service_method, client, namespace, wsdl, endpoint=nil)
    #take the form fields and create a wsdl request.
    # driver = Soap4r2Ruby.new(client, namespace, wsdl).rpc_driver
    # driver.endpoint_url= endpoint if endpoint != nil
    # driver.wiredump_dev = STDERR
    # @result = driver.send(service_method,input)
    #take the form fields and create a wsdl request.
    port_type = Soap4r2Ruby.new(client, namespace, wsdl).port_type
    obj = eval(namespace+"::"+port_type.name.name).send(:new, endpoint)
	  obj.wiredump_dev = STDERR
    # obj.wiredump_dev = File.new("err.log", "w+")
    @result = obj.send(service_method,input)
    # require 'ruby-debug'; debugger
    # errors = File.open("err.log", "w+").readlines
    # if (errors.size!=0)
      # require 'ruby-debug'; debugger
      # @result = SinatraAppHelpers.load_request_xml("err.log", client, namespace, wsdl)
      # File.delete("err.log")
    # end
  end


end
