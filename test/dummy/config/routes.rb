Rails.application.routes.draw do

  mount GpioManager::Engine => "/gpio_manager"
end
