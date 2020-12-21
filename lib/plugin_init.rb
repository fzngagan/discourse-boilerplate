# frozen_string_literal: true
module Boilerplate
  class PluginInit
    def run
      ## code which is supposed to be written in plugin.rb can all go here
    end

    def initialize(instance)
      @instance = instance
      run
    end

    def method_missing(method, *args, &block)
      @instance.public_send method, *args, &block
    end
  end
end
