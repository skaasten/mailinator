# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailinator/version'

Gem::Specification.new do |spec|
  spec.name          = 'mailinator'
  spec.version       = Mailinator::VERSION
  spec.authors       = ['Alejandro Dev.']
  spec.email         = ['aeinformatico@gmail.com']
  spec.summary       = %q{Mailinator REST API wrapper}
  spec.homepage      = 'https://github.com/ainformatico/mailinator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'hashie', '~> 3.3'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
end
