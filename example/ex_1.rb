require 'gemjacker'
require 'gemjacker-helloworld-bin'

GemJacker::HelloWorld.register
GemJacker.deploy
system('gemjacker-helloworld-bin')
