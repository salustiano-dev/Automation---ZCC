require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome # ou :selenium_chrome_headless
  config.app_host = 'https://zcc.zenvia.com'
  config.default_max_wait_time = 10
end
