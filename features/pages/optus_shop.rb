class OptusShop
  def initialize(browser)
    @browser = browser
  end

  def goto_optus
    @browser.goto 'https://optus.com.au'
  end

  def shop_menu
    @browser.button(aria_label: 'Shop', id: 'btnShowMegaNav')
  end

  def shop_menu_item(link)
    @browser.a(class: 'link megaNavLink', text: link)
  end
end
