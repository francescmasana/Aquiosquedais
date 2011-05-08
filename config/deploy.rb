require "bundler/capistrano"

set :application, "aquiosquedais"

set :repository,  "git@git.zonaenlinia.com:abredatos2011.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`


url="szl3.zonaenlinia.com"

set :deploy_to, "/var/www/vhosts/aquiosquedais.com"

set :branch, "master"

set :user, "deployer1"

role :web, url                         # Your HTTP server, Apache/etc
role :app, url                          # This may be the same as your `Web` server
role :db,  url, :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

