require 'capybara/cucumber'

[:chrome, :phantomjs, :firefox, :safari].each do |browser|
  Capybara.register_driver browser do |app| Capybara::Selenium::Driver.new(app, browser: browser) end
end

Capybara.default_driver = :firefox