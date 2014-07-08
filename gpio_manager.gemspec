$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gpio_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gpio_manager"
  s.version     = GpioManager::VERSION
  s.authors     = ["Alexander Negoda"]
  s.email       = ["alexander.negoda@gmail.com"]
  s.homepage    = "https://github.com/greendog/cubieboard_gpio_manager"
  s.summary     = "Provides a basic Ruby class to wrap the sysfs interface to the Cubieboard GPIOs"
  s.description = "This provides a basic Ruby class to wrap the sysfs interface to the Cubieboard GPIOs. Also provided is a fake GPIO class with an identical interface to allow for testing even when GPIOs are not present."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
