Then /^the current page should have a search box$/ do
  page = Page.current
  page.should have_search
  end

Then /^the current page should have a Synacor logo$/ do
  page = Page.current
  page.should have_logo
  page.logo['href'].should == 'http://www.synacor.net/'
end