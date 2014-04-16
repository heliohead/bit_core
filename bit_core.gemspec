$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bit_core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bit_core"
  s.version     = BitCore::VERSION
  s.authors     = ["Eric Carty-Fickes"]
  s.email       = ["ericcf@northwestern.edu"]
  s.homepage    = "https://github.com/nupmmarkbegale/bit_core"
  s.summary     = "Shared models and business logic for bit apps."
  s.description = "Models, migrations, etc."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.0"

  s.add_development_dependency "pg"
  s.add_development_dependency "spring"
  s.add_development_dependency "rspec-rails", "~> 3.0.0.beta"
end
