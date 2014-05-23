# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'launch/version'

Gem::Specification.new do |spec|
  spec.name          = "launch"
  spec.version       = Launch::VERSION
  spec.authors       = ["Cevaris"]
  spec.email         = ["cevaris@gmail.com"]
  spec.summary       = %q{Deploy services via config file.}
  spec.description   = %q{Deploy services via Docker to remote or local hardware.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "docker-api", "~> 1.10.11"
end
