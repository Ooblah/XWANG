require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am on the airmiles site$/) do
  $browser.goto $base_url+$default_start_page
end

When(/^I login$/) do
  General.do_login("L2", "Home")
end

Then(/^I should see my balance in header$/) do
  (Header.is_balance_visible).should == true 
end

Then(/^I should see my name in header$/) do
  (Header.is_name_visible).should ==  true
end