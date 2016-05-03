$LOAD_PATH.push File.expand_path("../lib", __FILE__)

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

  s.add_runtime_dependency "actionpack", "~> 5.0.0.beta4"
  s.add_runtime_dependency "actionview", "~> 5.0.0.beta4"
  s.add_runtime_dependency "activerecord", "~> 5.0.0.beta4"
  s.add_runtime_dependency "activesupport", "~> 5.0.0.beta4"
  s.add_runtime_dependency "railties", "~> 5.0.0.beta4"
  s.add_runtime_dependency "redcarpet", [">= 3.3.2", "< 3.4"]

  s.add_development_dependency "pg", [">= 0.18", "< 1.0"]
  s.add_development_dependency "spring", "~> 1"
  s.add_development_dependency "rspec-rails", "~> 3.5.0.beta3"
end
