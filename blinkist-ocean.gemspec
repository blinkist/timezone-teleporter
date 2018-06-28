$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

# Maintain your gem's version:
require "oceans/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "oceans"
  spec.version     = Oceans::VERSION
  spec.authors     = ["Ole Richter"]
  spec.email       = ["ole@blinkist.com"]
  spec.homepage    = "https://www.blinkist.com"
  spec.summary     = "Oceans"
  spec.description = "Oceans"

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "timezone", "~> 1.2.0"

  spec.add_development_dependency "byebug"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.7.0"
  spec.add_development_dependency "rubocop", "~> 0.39"
end
