require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in at "(.*?)" user on site$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

When(/^I click the "(.*?)" sign out link$/) do |sign_out_link|
  Header.click_toolbar_link(sign_out_link)
end

Then(/^I should be redirected to the "(.*?)" sign out page$/) do |arg1|
  $browser.text.include? "Thanks for visiting airmiles.ca!"
  $browser.goto $base_url+$default_start_page
end

Then(/^I should see my "(.*?)" balance$/) do |boolean_balance_visible|
  if (boolean_balance_visible == "false")
    Header.is_balance_visible().should == false
  else
    Header.is_balance_visible().should == true
  end
end

Then(/^I should see my "(.*?)" name$/) do |boolean_name_visible|
  if (boolean_name_visible == "false")
    Header.is_name_visible().should == false
  else
    Header.is_name_visible().should == true
  end
end