require 'gemjacker'

module GemJacker
  class HelloWorld
    # Priority 1 so it's loaded over normal system paths.
    def self.register(priority=1)
      here = File.dirname(__FILE__)
      there = "../files/bin"

      search_path = File.expand_path(File.join(here, there))

      GemJacker::ExecutablePaths.add_path(search_path, priority)
    end
  end
end
