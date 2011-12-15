require 'gemjacker'
require 'gemjacker-helloworld-bin'

GemJacker::HelloWorld.register
GemJacker.deploy

desc "call gemjacker-helloworld-bin"
task "call" do
  system('gemjacker-helloworld-bin')
end
