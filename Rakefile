require 'rubygems'
require 'rake'

class FailedCleanException < Exception;end

task :default => 'test:all'

namespace :maintenance do
  current_dir = File.dirname(__FILE__)
  client_dir = "#{current_dir}/public/generated_clients"

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
    %x{ruby test/ts_master.rb}
  end

  desc "run rcov code coverage report"
  task :coverage do
    %x{rcov test/unit/*.rb}
  end

  desc "run saikuro cyclomatic complexity report"
  task :complexity do
    %x{saikuro -c -t -i lib -y 0 -w 11 -e 16 -o complexity/}
  end

 desc "run all test tasks"
 task :all => [ :run , :coverage, :complexity ]
end

namespace :server do
  desc "run the app"
  task :run do
    %x{ruby app.rb }
  end

  task :open do
    %x{open http://localhost:4567}
  end
end