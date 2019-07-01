require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #selenum selenium-chrome selenium-chrome-healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 30
end
