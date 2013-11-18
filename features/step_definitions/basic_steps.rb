require 'mechanize'
MECHANIZE = Mechanize.new

Given(/^that I am on the home page$/) do
  PAGE = MECHANIZE.get("file://localhost#{Dir.getwd}/public/index.html")
end

Then(/^I should see "(.*?)"$/) do |content|
  PAGE.body.should =~ /#{content}/
end

When(/^I click on "(.*?)"$/) do |link|
  PAGE.body.should =~ /#{link}/
  PAGE = MECHANIZE.click(link)
end