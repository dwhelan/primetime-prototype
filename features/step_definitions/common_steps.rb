Given /^I am on the "(\w+?)" page$/  do |page_name|
  Page.with_name(page_name).load
end

Then /^I should be on the "(\w+)" page$/ do |page_name|
  Page.with_name(page_name).displayed?.should be_true
end

Then /^I should be able to "(\w+?)"$/ do |action|
  current_page.element(action).should_not be_nil
end

Then /^I should see the (?:.* *) "(\w+?)"/ do |name|
  current_page.element(name).visible?.should be_true
end

When /^I select the (?:.* *) "(\w+?)"/ do |name|
  current_page.element(name).click
end