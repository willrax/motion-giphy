# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require "motion/project/template/ios"
require "./lib/motion-giphy"

begin
  require "bundler"
  require "motion/project/template/gem/gem_tasks"
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = "motion-giphy"
end
