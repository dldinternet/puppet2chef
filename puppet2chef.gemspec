# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet2chef/version'

Gem::Specification.new do |spec|
  spec.name          = "puppet2chef"
  spec.version       = Puppet2Chef::VERSION
  spec.authors       = ["Christo DeLange"]
  spec.email         = ["github@dldinternet.com"]
  spec.description   = %q{Allows for automated translation of Puppet modules into Chef cookbooks}
  spec.summary       = %q{automated translation of Puppet modules into Chef cookbooks}
  spec.homepage      = "http://github.com/dldinternet/puppet2chef"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
