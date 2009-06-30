require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
require 'vendor/frozen'

test_folders = [File.dirname(File.expand_path(__FILE__)) + '/unit']
curr = Dir.pwd 
test_folders.each do |folder|
  Dir.chdir(folder)
  Dir.entries(folder).select{|e| e.to_s.include?('tc_')}.each do |f|
    puts f.to_s
    require f
  end
end
Dir.chdir(curr)

class TS_Master
  def self.suite
    suite = Test::Unit::TestSuite.new
    # suite << TC_Soap4r2ruby.suite
    # suite << TC_LoadingSaving.suite
    # suite << TC_Submission.suite
    # suite << TC_Soap4r2rubyHelpers.suite
    suite << TC_SinatraAppHelpers.suite
    # suite << TC_NamespaceIssues.suite
    # suite << TC_ServiceMethodsAndNames.suite
    # suite << TC_Mpc1ServiceNames.suite
    return suite
  end
end
Test::Unit::UI::Console::TestRunner.run(TS_Master)
