Given /^I am on the home page$/  do
  Home.new.load
end

When(/^I start searching for "(.*?)"$/) do |input|
  current_page.search.input.set input
end

Then /^there should be (\d+) search suggestions$/ do |count|
  current_page.search.suggestions.count.should == count.to_i
end

Then /^there should be no search suggestions$/ do
  current_page.search.has_suggestions?.should be_false
end

Then /^each suggestion should contain "(.+)"$/ do |search_phrase|
  current_page.search.suggestions.each do |suggestion|
    suggestion.should have_content /#{search_phrase}/i
  end
end