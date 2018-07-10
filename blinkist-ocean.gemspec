# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "oceans/version"

Gem::Specification.new do |spec|
  spec.name        = "oceans"
  spec.version     = Oceans::VERSION
  spec.authors     = ["Ole Richter", "Tomek Poderski", "Sebastian Schleicher"]
  spec.email       = ["ole@blinkist.com", "tomek@blinkist.com", "sj@blinkist.com"]

  spec.summary     = 'Beam me to the ocean, Scotty!" | Add some privacy to your users location data.'
  spec.description = "Oceanize gives you random coordinates somewhere on the ocean in the same UTC timezone."
  spec.homepage    = "https://github.com/blinkist/oceans"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "timezone_finder", "~> 1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end
