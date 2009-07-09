require 'rubygems'
require 'rake'

class FailedCleanException < Exception;end
class FailedTestException < Exception;end

task :default => 'test:all'

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

namespace :test do

 desc "run the test suite"
 task :run do
   test_result = %x{ruby test/ts_master.rb}
     print test_result
     if test_result.match(/error/i)
       puts "test failed"
       throw FailedTestException.new
     end
   end
   
 desc "run all tests"
 task :all => [ :run ]
end