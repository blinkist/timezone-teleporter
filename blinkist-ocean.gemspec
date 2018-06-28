$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

# Maintain your gem's version:
require "oceans/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "oceans"
  spec.version     = Oceans::VERSION
  spec.authors     = ["Ole Richter"]
  spec.email       = ["ole@blinkist.com"]

  spec.summary     = 'Beam me to the ocean, Scotty!" | Add some privacy to your users location data.'
  spec.description = "Oceanize gives you random coordinates somewhere on the ocean in the same UTC timezone."
  spec.homepage    = "https://github.com/oceans"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "timezone", "~> 1.2.0"

  spec.add_development_dependency "byebug"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "rubocop", "~> 0.49.0"
end
