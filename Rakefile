require 'rubygems'
require 'rake'

class FailedCleanException < Exception;end

task :default => 'maintenance:all'

namespace :maintenance do
  current_dir = File.dirname(__FILE__)
  client_dir = "#{current_dir}/generated_clients"

 desc "clean out the generated clients directory"
 task :clean do
   clean_result = %x{rm -rf #{client_dir}/*}
     print clean_result
     if clean_result.match(/error/i)
       puts "clean failed"
       throw FailedCleanException.new
     end
   end
   
 desc "run a full clean"
 task :all => [ :clean ]
end
