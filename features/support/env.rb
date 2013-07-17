require 'capybara/cucumber'
require 'site_prism'

Dir['sections/**/*.rb'].each {|f| require "./#{f}"}
require './pages/page'
Dir['pages/**/*.rb'].each {|f| require "./#{f}"}

[:chrome, :phantomjs, :firefox, :safari].each do |browser|
  Capybara.register_driver browser do |app| Capybara::Selenium::Driver.new(app, browser: browser) end
end

Capybara.configure do |config|
  config.default_driver = :firefox
  config.app_host       = 'http://www.synacor.net'
end