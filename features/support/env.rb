# frozen_string_literal: true

require 'watir'

Before do
  @browser = Watir::Browser.new
  @browser.driver.manage.window.maximize
end

After do
  @browser.close
end