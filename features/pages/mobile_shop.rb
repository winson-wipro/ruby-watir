class MobileShop
  def initialize(browser)
    @browser = browser
  end

  def filter_menu(menu)
    @browser.label(aria_label: "Filter By: #{menu}.")
  end

  def filter_menu_item(item)
    @browser.div(aria_label: item)
  end
end
