$:.push File.expand_path("./lib", __FILE__)

require 'rubygems'
require 'bundler'
Bundler.setup
require 'underoos'
require 'underoos/application'

run Underoos::Application
