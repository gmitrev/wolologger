# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wolologger'

Gem::Specification.new do |spec|
  spec.name          = "wolologger"
  spec.version       = Wolologger::VERSION
  spec.authors       = ["georgi"]
  spec.email         = ["gvmitrev@gmail.com"]
  spec.description   = %q{A little extention to the default ruby logger}
  spec.summary       = %q{The logger allows the user to pass two strings to any logger method and the first will be bolded}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
