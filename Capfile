require 'bundler/setup'
require 'rubygems'
require 'capistrano'
require 'colored'
require 'xp5k'

load "config/deploy.rb"
load "roles.rb"

# global sequence of tasks
after "automatic", "xp5k"

desc 'Automatic deployment'
task :automatic do
 puts "Welcome to automatic deployment".bold.blue
end

namespace :myproject do

  desc 'TODO : myproject task'
  task :default do

  end

end

