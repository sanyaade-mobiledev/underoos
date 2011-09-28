# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "underoos/version"

Gem::Specification.new do |s|
  s.name        = "underoos"
  s.version     = Underoos::VERSION
  s.authors     = ["Matt Kitt"]
  s.email       = ["matt.kitt@bittheory.com"]
  s.homepage    = "http://github.com/bit-theory/underoos"
  s.summary     = %q{underoos are fun to wear}
  s.description = %q{Compass-based style/styleguide framework}

  s.rubyforge_project = "."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "compass", "~> 0.11.5"
  s.add_runtime_dependency "haml",    "~> 3.1.3"
  s.add_runtime_dependency "sass",    "~> 3.1.7"
  
  s.add_development_dependency "sinatra"
  s.add_development_dependency "sinatra-reloader"
  s.add_development_dependency "heroku"
  s.add_development_dependency "thin"
  
end
