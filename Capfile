load 'deploy' if respond_to?(:namespace) # cap2 differentiator
 
set :application, "montrealwebpresence.net"
set :user, "szahabi	"
set :repository, "git@github.com:Thamster/peyepr.git"
set :checkout, :export
 
set :deploy_to, "/home/#{user}/#{application}/capTemp"
set :deploy_via, :remote_cache
 
set :scm, :git
set :git_shallow_clone,1
set :branch, "master"
 
role :app, application
role :web, application
 
set :runner, user
set :use_sudo, false
 
namespace :deploy do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

