require 'capybara/cucumber'
#require 'capybara'
#require 'capybara/dsl'
#require 'capybara/rspec/matchers'
require 'selenium-webdriver'

#World(Capybara::DSL)
#World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    #selenum selenium-chrome selenium-chrome-healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 30
end
