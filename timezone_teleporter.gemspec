# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "timezone_teleporter/version"

Gem::Specification.new do |spec|
  spec.name        = "timezone_teleporter"
  spec.version     = TimezoneTeleporter::VERSION
  spec.authors     = ["Ole Richter", "Tomek Poderski", "Sebastian Schleicher"]
  spec.email       = ["ole@blinkist.com", "tomek@blinkist.com", "sj@blinkist.com"]

  spec.summary     = "Add some privacy to your users location data."
  spec.description = "TimezoneTeleporter anonymizes users' GPS coordinates by generating random coordinates in the same time zone. These new coordinates may be used then safely by 3rd party systems to process the users' location, without disclosing their actual physical position, providing more privacy, and anonymity to users."
  spec.homepage    = "https://github.com/blinkist/timezone-teleporter"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_dependency "timezone_finder", "~> 1"

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end
