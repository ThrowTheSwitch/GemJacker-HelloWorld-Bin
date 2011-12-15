# encoding: utf-8

require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "gemjacker-helloworld-bin"
  gem.homepage = "http://github.com/sw17ch/gemjacker-helloworld-bin"
  gem.license = "MIT"
  gem.summary = %Q{GemJacker example for showing how to deploy binaries.}
  gem.description = %Q{Example showing basic usage of GemJacker for binaries.}
  gem.email = "john.vanenk@atomicembedded.com"
  gem.authors = ["John Van Enk"]
  gem.files += FileList['files/**/*']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "gemjacker-helloworld #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

# Build the example executable
desc "Build the 'Hello World' executable."
task "build_executable" do
  system("gcc files/bin/gemjacker-helloworld-bin.c -o files/bin/gemjacker-helloworld-bin")
end
