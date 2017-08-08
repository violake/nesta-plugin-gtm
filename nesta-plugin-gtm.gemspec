# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)                                       
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)  
require "nesta-plugin-gtm/version"

Gem::Specification.new do |spec|
  spec.name        = "nesta-plugin-gtm"
  spec.version     = Nesta::Plugin::Gtm::VERSION
  spec.authors     = ["violake"]
  spec.email       = ["violake@foxmail.com"]
  spec.homepage    = ""
  spec.summary     = %q{add google tag manager to all pages}
  spec.description = %q{my first nesta plugin}
  spec.license     = "MIT"

  spec.rubyforge_project = "nesta-plugin-gtm"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }       
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/}) 
  spec.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # spec.add_development_dependency "rspec"
  # spec.add_runtime_dependency "rest-client"
  spec.add_dependency("nesta", ">= 0.9.11")
  spec.add_development_dependency("rake")
end
