require 'soap/wsdlDriver'

module GeneratorHelpers
  @@seed = 1

  ## helpers
  def self.generate_ruby_classes(folder_name, namespace, wsdl)
    curr = Dir.pwd
    begin
      self.cleanup_generated_ruby_classes(folder_name)
      Dir.mkdir folder_name
      Dir.chdir folder_name
      i = WSDL::SOAP::WSDL2Ruby.new
      i.instance_variable_set("@name", 'default')
      i.instance_variable_set("@location", wsdl)
      opt = {}
      opt["force"] = true
      opt['classdef'] = nil
      opt['mapping_registry'] = nil
      opt['driver'] = nil
      opt['classdef_filename'] = '.rb'
      opt["module_path"] = namespace
      i.instance_variable_set("@opt", opt)
      i.run
      #  
      # command = "wsdl2ruby.rb --module_path #{namespace} --wsdl #{wsdl} --classdef --mapping_registry --driver --force"
      # require 'ruby-debug';debugger   
      # result = %x{command}
      make_unique_name_for_generated_ruby_classes(Dir.pwd)
      driver_file = Dir.entries(Dir.pwd).grep(/Driver.rb/).first
    ensure
      Dir.chdir curr
      driver_file
    end
  end

  def self.make_unique_name_for_generated_ruby_classes(folder_name)
    #get the name of the wsdl service, default or other
    files = (Dir.entries(folder_name)-[".","..",".svn"])
    if files.size != 3
      throw Exception.new("I only expected a driver, classdef and mapping_registry file in this folder : #{folder_name}")
    end
    #find the common element from the 3 filenames.
    lcs = files.sort.first.sub('.rb', '')
    timestamp = Time.now.to_f.to_s.gsub('.','')
    srand @@seed
    @@seed += 1
    unikstr = rand Time.now.to_f.to_s.gsub('.','')
    new_file_names_map = {}
    files.each do |file|
      new_file_names_map[file.to_s] = file.to_s.sub(lcs, lcs+unikstr.to_s)
    end
  
    new_file_names_map.each do |old_file, new_file|
      #rename all files adding a unique timestamp
	  old_f = File.open(old_file)
      lines = old_f.readlines.to_s
      new_file_names_map.each do |old_name, new_name|
        lines.gsub!("'#{old_name}'", "'#{new_name}'")
      end
      #replace the contents of the files where the old file names were referenced.
      new_f = File.open(new_file, "w+")
	  new_f.syswrite(lines)
	  File.chmod(0777,old_file)
	  old_f.close
	  new_f.close
      File.delete(old_file)
    end
  end  

  def self.cleanup_generated_ruby_classes(folder_name)
    #generate the ruby classes with wsdl2ruby
    if File.exists?(folder_name)
      (Dir.entries(folder_name) - [".", "..",".svn"]).each do |e|
        File.delete(folder_name+"/"+e)
      end
      Dir.rmdir folder_name
    end
  end
end