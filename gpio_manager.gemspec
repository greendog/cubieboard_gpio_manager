$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gpio_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gpio_manager"
  s.version     = GpioManager::VERSION
  s.authors     = ["Alexander Negoda"]
  s.email       = ["alexander.negoda@gmail.com"]
  s.homepage    = "http://hoobot.ru"
  s.summary     = "GPIO manager for hOObot House"
  s.description = "GPIO manager for hOObot House"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "sqlite3"
end
