$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

require 'rubygems'
require 'bundler/setup'
require 'underoos'

require 'action_controller/railtie'
require 'sass-rails'
require 'sprockets/railtie'
require 'jquery-rails'

# Set up a dummy app for development
class Underoos::Application < Rails::Application

  config.session_store :cookie_store, :key => '_underoos_session'
  config.secret_token = '1319d8ccf1b9bfbdefcb6aa380aadkasdjlkajdlajd044ce'

  config.encoding = 'utf-8'
  config.assets.enabled   = true
  config.assets.compress  = false
  config.assets.debug     = true
  config.assets.version = '1.2'
  config.assets.compile       = true
  config.serve_static_assets  = true
  config.assets.prefix        = 'assets'
  config.assets.digest        = false

end

Underoos::Application.initialize!

Underoos::Application.routes.draw do
  mount Underoos::Engine => '/'
end

run Underoos::Application
