# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "underoos/version"

Gem::Specification.new do |s|
  s.name        = "underoos"
  s.version     = Underoos::VERSION
  s.authors     = ["Matt Kitt"]
  s.email       = ["matt.kitt@modeset.com"]
  s.homepage    = ""
  s.summary     = %q{Starter styles in Sass and Compass}
  s.description = %q{Starter styles in Sass and Compass}

  s.rubyforge_project = "underoos"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', '~> 3.1.0'
  s.add_runtime_dependency 'sass-rails'
  s.add_runtime_dependency 'compass-rails'
  s.add_runtime_dependency 'haml-rails'
  s.add_runtime_dependency 'redcarpet'
  s.add_runtime_dependency 'eco'

  s.add_development_dependency 'thin'
  s.add_development_dependency 'rocco'
  s.add_development_dependency 'powder'
  s.add_development_dependency 'heroku'

end