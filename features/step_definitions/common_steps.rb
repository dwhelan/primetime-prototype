
Then(/^I should be able to "(\w+?)"$/) do |action|
  current_page.element(action).should_not be_nil
end

Then /^the current page should have a Synacor logo$/ do
  page = Page.current
  page.should have_logo
  page.logo['href'].should == 'http://www.synacor.net/'
end