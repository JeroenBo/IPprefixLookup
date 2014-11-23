# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'IPprefixLookup/version'
require 'sqlite3'
require 'ipaddr'

Gem::Specification.new do |spec|
  spec.name          = "IPprefixLookup"
  spec.version       = IPprefixLookup::VERSION
  spec.authors       = ["Jeroen Boonstra"]
  spec.email         = ["jeroen@provider.nl"]
  spec.summary       = %q{Lookup the real prefix of an IP address}
  spec.description   = %q{Lookup the real prefix from a preprocessed database that is filled with BGP information.}
  spec.homepage      = "https://github.com/JeroenBo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
