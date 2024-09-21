# frozen_string_literal: true

require "bundler/gem_tasks"
task default: %i[ffi_generate]

task :build do 
  sh 'gem build raylib.gemspec'
end

task :run do
  sh 'bundle console'
end
