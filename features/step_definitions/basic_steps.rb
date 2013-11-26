Given(/^that I am on the home page$/) do
  visit 'index.html'
end

Given(/^I am on the "(.*?)" page$/) do |page|
  visit page.downcase.gsub(/ /,'_')+".html"
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content content
end

When(/^I click on "(.*?)"$/) do |link|
  page.should have_content link
  click_link link
end

And(/^"(.*?)", "(.*?)" is disabled$/) do |button1, button2|
  find("input#"+button1.gsub(/ /,'_'))[:disabled].should be_true
  find("input#"+button2.gsub(/ /,'_'))[:disabled].should be_true
end


And(/^orders in the "(.*?)" is sorted by time and status$/) do |arg1|
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the "(.*?)" page$/) do |arg1|
    pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the "(.*?)" home page$/) do |arg1|
    pending # express the regexp above with the code you wish you had
end




# seems like I need to write specific sets of steps for each student as an example ...
# it would be nice to follow that with a simple client only data storage option ...

Given(/^the following contact exists:$/) do |table|
  # table is a Cucumber::Ast::Table
  #pending # this would be written into the database if we were testing with one
end

When(/^I go to the Users Page$/) do
  visit 'users.html'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |name, value|
  fill_in(name, :with => value)
end

When(/^I press "(.*?)"$/) do |button|
  click_button button
end

Then(/^I change "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  page.should_not have_content content
end

When(/^I go to the timetable page for "(.*?)"$/) do |arg1|
  visit 'timetable.html'
end

Then(/^I change avaliable time with "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I go to the user page$/) do
  visit 'user.html'
end

Then(/^I check the timetable with "(.*?)"    \# upload\?$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
