# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'colourer/version'

Gem::Specification.new do |spec|
  spec.name          = 'colourer'
  spec.version       = Colourer::VERSION
  spec.authors       = ['Roman V. Babenko']
  spec.email         = ['romanvbabenko@gmail.com']
  spec.description   = %q{Just another Ruby String class extension. Adds methods to set text color}
  spec.summary       = %q{Add color methods to String class}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rspec', '~> 2.14.0'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'approvals'
end
