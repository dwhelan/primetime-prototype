When /^I choose to navigate to "(\w+)"$/ do |link|
  current_page.navigate.to(link)
end
