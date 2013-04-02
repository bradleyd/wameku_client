# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wameku_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wameku_client"
  spec.version       = WamekuClient::VERSION
  spec.authors       = ["Brad Smith"]
  spec.email         = ["bradleydsmith@gmail.com"]
  spec.description   = %q{Connects to remote hosts running wameku_client_daemon}
  spec.summary       = %q{Connects to remote hosts running wameku_client_daemon}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "mocha"
end
