When /^I choose to navigate to "(\w+)"$/ do |link|
  current_page.navigate.to(link)
end

Then /^I should be on the "(\w+)" page$/ do |page_name|
  Page.with_name(page_name).displayed?.should be_true
end
