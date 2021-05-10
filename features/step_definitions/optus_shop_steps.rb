# frozen_string_literal: true

Given('I open the optus home page') do
  @page = OptusShop.new(@browser)
  @page.goto_optus
end

When('I open the shop menu') do
  @page.shop_menu.click
end

And('I click on {string} in the shop menu') do |link|
  @page.shop_menu_item(link).click
end

Then('I am on the mobile shop page') do
  @page = MobileShop.new(@browser)
end

When('I open the {string} menu') do |menu|
  @page.filter_menu(menu).click
end

And('I add a brand filter') do
  @page.filter_menu_item('Apple').click
end

And('I add a memory filter') do
  @page.filter_menu_item('128GB - 256GB').click
end

And('I ad a network speed filter') do
  @page.filter_menu_item('5G').click
end

And('I add a payment terms filter') do
  @page.filter_menu_item('12 months').click
end

And('I sort by price') do
  @page.filter_menu_item('Price Lowest to Highest').click
end
