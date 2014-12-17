# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coroutine/version'

Gem::Specification.new do |spec|
  spec.name          = "coroutine"
  spec.version       = Coroutine::VERSION
  spec.authors       = ["Raman Sinha", "Scott Balay"]
  spec.email         = ["raman.sinha@oracle.com"]
  spec.summary       = %q{Who has to have lunch with me?}
  spec.description   = %q{Find out who's on the hook to have lunch with you this week}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
