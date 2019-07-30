require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'json'
require 'base64'
require 'webdrivers'
require 'rspec'
Capybara.app_host = "http://automationpractice.com/index.php"
Capybara.save_path = 'report/'
Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run

# ========================= ENVIRONMENT SETUP ========================#
Capybara.register_driver :selenium do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => ['headless', 'disable-gpu', 'no-sandbox'] })
    Capybara::Selenium::Driver.new(app, browser: :chrome, :desired_capabilities => capabilities)
end
Capybara.default_driver = :selenium

# ========================= SCENARIO TEARDOWN ========================#

Before do |scenario|
    @pages = Pages.new
end