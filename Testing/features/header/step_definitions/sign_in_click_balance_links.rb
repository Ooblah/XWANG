require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^I am logged in as "(.*?)" user on site$/) do |sec_lvl|
  $browser.goto $base_url+$default_start_page
  General.do_login(sec_lvl)
end

Then(/^I see my "(.*?)" balance$/) do |balance_visible|
  Header.is_balance_visible()   
end

Then(/^I click my "(.*?)" balance link$/) do |balance_type|
  if (balance_type == "Cash")
    Header.click_cash_balance()
  else
    Header.click_dream_balance
  end
end

Then(/^I should be on the "(.*?)" page$/) do |page_name|
  if (page_name == "Cash Overview")
    $browser.text.include? "Login to your Account to view or change it at any time."
  else
    $browser.table(:id => "rewardsNavContent").exists?
  end
end