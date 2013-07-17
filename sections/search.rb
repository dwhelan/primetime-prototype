require 'site_prism'

class Search < SitePrism::Section

  element :input,           'input[name="q"]'
  element :suggestion_list, '#syn_suggestion_box'

  def has_suggestions?
    has_suggestion_list?
  end

  def suggestions
    suggestion_list.all('li')
  end
end