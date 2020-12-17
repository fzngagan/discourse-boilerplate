# frozen_string_literal: true
module Boilerplate
  class PluginInit
    @@plugin_init = Proc.new {
      puts "check enabled_site_setting"
      puts respond_to? :enabled_site_setting

      after_initialize do
        puts "check add_to_class"
          puts respond_to? :add_to_class
      end
    }

    def initialize(instance)
      instance.instance_eval &@@plugin_init
    end
  end
end
