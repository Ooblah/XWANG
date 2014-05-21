require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as "(.*?)" user on site$/) do |security_level|
  General.do_login("security_level", "Home")
end

When(/^I click the "(.*?)" sub nav dropdown link$/) do |link_name|
  Header.click_subnav_main_link(link_name)
end

When(/^I click the "(.*?)" link$/) do |link_name|
  Header.click_subnav_child_link(link_name)
end

Then(/^I should be redirected to the "(.*?)" page$/) do |page_text|
  ($browser.text.include? page_text).should == true
end