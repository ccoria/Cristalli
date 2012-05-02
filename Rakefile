#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rake/dsl_definition'

require File.expand_path('../config/application', __FILE__)

desc 'starting server on port 80 at localhost'
task :server do
  sh "rvmsudo rails server -p 80 -b 10.0.1.10"
end

desc 'starting server on port 80 at localhost'
task :serverprod do
  sh "rvmsudo rails server -p 80 -b localhost -e production"
end

Cristalli::Application.load_tasks
