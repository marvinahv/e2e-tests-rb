# Add configuration

# Makes capybara available. See 
# See Capybara's DSL https://github.com/teamcapybara/capybara#the-dsl
require 'spinach/capybara'

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome_headless
  config.app_host = ENV['APP_HOST_URL'] # Set ENV variable
end

Spinach::FeatureSteps.send(:include, Spinach::FeatureSteps::Capybara)