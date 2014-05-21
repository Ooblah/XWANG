require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^I am logged in as an "(.*?)" user on site$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

Then(/^I should see my cash balance "(.*?)"$/) do |see_cash_balance|
  $logger.info("see_cash_balance "+ see_cash_balance)
  if(see_cash_balance == "false")
    Header.is_cash_balance_visible().should == false
  else
    Header.is_cash_balance_visible().should == true
  end
end

Then(/^I should see my dream balance "(.*?)"$/) do |see_dream_balance|
  if(see_dream_balance=="false")
    Header.is_dream_balance_visible().should == false
  else
    Header.is_dream_balance_visible().should == true
  end
end

Then(/^I should see my name "(.*?)"$/) do |show_name|
  if(show_name=="false")
    Header.is_name_visible().should == false
  else
    Header.is_name_visible().should == true
  end
end