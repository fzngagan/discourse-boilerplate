module Boilerplate
    class PluginInit
      @@plugin_init = Proc.new {
        puts "check respond to"
        puts respond_to? :add_to_class
      }
        def initialize(instance)
            instance.instance_eval &@@plugin_init
        end 
    end
end

