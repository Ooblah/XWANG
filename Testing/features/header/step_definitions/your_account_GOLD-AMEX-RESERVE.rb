require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I Login as L3 with "(.*?)" collector and "(.*?)" pin$/) do |collector_number, pin|
  $browser.goto $base_url+$default_start_page
  General.do_login("L3", "Home", collector_number, pin)
end

When(/^I hover over your account link$/) do
  Header.hover_toolbar_link("Your Account")
end

Then(/^I should see "(.*?)" link in the your account overlay on mouse hover$/) do |linkID|
  $browser.li(:id => "header-dropdown-account", :class => 'open').should exist  
  $browser.a(:id => linkID).visible?  
end

Then(/^I should be redirected to "(.*?)" page when "(.*?)" link is clicked$/) do |page_text, linkID|
  $browser.a(:id => linkID).click
  $browser.text.include? page_text
  General.sign_out
end