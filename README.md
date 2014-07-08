# GpioManager

## Install
Add folowing string to you Gemfile:

```gem 'gpio_manager', :git => 'git://github.com/greendog/cubieboard_gpio_manager.git'```

## Using

Add folowing rows to script.bin:
```
[gpio_para]
gpio_used = 1
gpio_num = 1
gpio_pin_1 = port:PG09<1><default><default><1>
```
In ruby console:
```
@gpio = GpioManager::GPIO.new(1, "pg9") #=> #<GpioManager::GPIO:0x3565a88 @id=1, @port="pg9", @value_path="/sys/class/gpio/gpio1_pg9/value", @direction_path="/sys/class/gpio/gpio1_pg9/direction", @edge_path="/sys/class/gpio/gpio1_pg9/edge", @active_low_path="/sys/class/gpio/gpio1_pg9/active_low">
@gpio.exported? #=> false
@gpio.export
@gpio.exported? #=> true
@gpio.output? #=> false
@gpio.set_output
@gpio.output? #=> true
@gpio.high? #=> false
@gpio.set_high
@gpio.high? #=> true
@gpio.low? #=> false
@gpio.set_low
@gpio.low? #=> true
```

## Contributing to gpio_manager

Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
Fork the project.
Start a feature/bugfix branch.
Commit and push until you are happy with your contribution.
Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Alexander Negoda. See LICENSE.txt for further details.
