require "bundler/gem_tasks"
require 'rake/testtask'

task :default => :spec

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => :test
