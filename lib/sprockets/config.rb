require 'sprockets'
require 'sprockets-sass'
require 'compass'

require File.join(File.dirname(__FILE__), 'static_compiler')

Encoding.default_external = "UTF-8"

$sprockets_environment = Sprockets::Environment.new
$sprockets_environment.append_path 'vendor/assets/javascripts'
$sprockets_environment.append_path 'app/assets/javascripts'
$sprockets_environment.append_path 'app/assets/stylesheets'

# Compass.configuration.line_comments = false

