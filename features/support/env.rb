require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'

#driver capybara
Capybara.register_driver :selenium do |app|
#    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    options = %w(--ignore-certificate-errors --disable-popup-blocking --disable-translate)
    Capybara::Selenium::Driver.new(app, browser: :chrome, switches: options)
end

#set driver pradrão
Capybara.default_driver = :selenium

#timeout pradrão
Capybara.default_max_wait_time = 15

#maximizar tela no inicio do teste
Capybara.page.driver.browser.manage.window.maximize
