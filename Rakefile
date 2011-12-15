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

# Build the example executable
desc "Build the 'Hello World' executable."
task "build_executable" do
  system("gcc files/bin/gemjacker-helloworld-bin.c -o files/bin/gemjacker-helloworld-bin")
end
