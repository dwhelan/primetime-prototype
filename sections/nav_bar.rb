require 'site_prism'

class NavBar < SitePrism::Section

  def self.nav_link_css klass
    "ul.nav li a.nav_#{klass}"
  end

  element :Home, nav_link_css('home')
  element :News, nav_link_css('news')

  def to link
    send(link).click
  end
end