# Add configuration

# Makes capybara available. See 
# See Capybara's DSL https://github.com/teamcapybara/capybara#the-dsl
require 'spinach/capybara'
require 'capybara/minitest'
require 'pry'
require_relative './seeds'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome_headless
  config.app_host = ENV['APP_HOST_URL'] # Set ENV variable
  config.save_path = 'screenshots'
  # config.default_max_wait_time = 5
end

Spinach::FeatureSteps.send(:include, Spinach::FeatureSteps::Capybara)