# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_json_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_json_logger"
  spec.version       = RailsJsonLogger::VERSION
  spec.authors       = ["Pablo Vizcay"]
  spec.email         = ["pablo.vizcay@gmail.com"]

  spec.summary       = 'Rails JSON Logger'
  spec.description   = 'Rails JSON Logger that depends on the semantic logger gem'
  spec.homepage      = 'https://github.com/vizcay/rails_json_logger'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails_semantic_logger", "~> 4.2", ">= 4.2.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
