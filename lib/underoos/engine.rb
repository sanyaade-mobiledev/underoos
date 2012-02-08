require 'rails'

module Underoos
  class Engine < Rails::Engine
    engine_name 'underoos'
    isolate_namespace Underoos
  end
end