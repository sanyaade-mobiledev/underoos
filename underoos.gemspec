# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "underoos/version"

Gem::Specification.new do |s|
  s.name        = "underoos"
  s.version     = Underoos::VERSION
  s.authors     = ["Matthew Kitt"]
  s.email       = ["matt.kitt@modeset.com"]
  s.homepage    = "http://underoos.modeset.com/"
  s.summary     = %q{Starter styles in Sass}
  s.description = %q{Starter styles in Sass}

  s.rubyforge_project = "underoos"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', '>= 3.1.0'
  s.add_runtime_dependency 'sass-rails'

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'aruba'

end
