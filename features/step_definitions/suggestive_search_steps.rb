Given /^I am on the home page$/  do
  @home_page = Home.new
  @home_page.load
end

Then /^"([^\"]*)" should link to "([^\"]*)"$/ do |link_text, path|
  link_url = @home_page.find_link(link_text)['href']
  URI.parse(link_url).path.should == path
end

When /^I enter "([^\"]*)" in the search box/ do |search_phrase|
  @home_page.fill_in 'q', :with => search_phrase
end

Then /^there should be (.+) search suggestions/ do |count|
  count = count == 'no' ? 0 : count
  @home_page.has_css?('#syn_suggestion_box ul li', count: count)
end

And /^each suggestion should contain "(.+)"$/ do |search_phrase|
  @home_page.all('#syn_suggestion_box ul li').each do |suggestion|
    suggestion.should have_content /#{search_phrase}/i
  end
end