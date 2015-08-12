# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dribble_demo/version'

Gem::Specification.new do |spec|
  spec.name          = "dribble_demo"
  spec.version       = DribbleDemo::VERSION
  spec.authors       = ["Jeremy Raines"]
  spec.email         = ["jraines@gmail.com"]
  spec.summary       = "API Client for Dribble"
  spec.description   = "API Client for Dribble"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.13.5"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
