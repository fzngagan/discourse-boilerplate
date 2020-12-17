# frozen_string_literal: true

# name: discourse-boilerplate
# about: 
# version: 0.1
# author: Faizaan Gagan
# url: https://github.com/fzngagan/discourse-boilerplate


    [
        "../lib/plugin_init.rb"
    ].each do |path|
        load File.expand_path(path, __FILE__)
        end

        Boilerplate::PluginInit.new(self)
