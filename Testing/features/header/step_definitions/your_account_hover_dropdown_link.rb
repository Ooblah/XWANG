require "#{File.dirname(__FILE__)}/../../common_steps.rb" #including main.rb starts the process

Given(/^that I am logged in as "(.*?)"$/) do |security_lvl|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_lvl).should == true
end

When(/^I hover over the list "(.*?)" item$/) do |link_name|
  Header.hover_toolbar_link(link_name)
end

Then(/^I should see the Drop Down menu$/) do
  $browser.li(:id => "header-dropdown-account", :class => 'open').should exist
end

Then(/^I click the "(.*?)" toolbar downdown menu link$/) do |drop_down_link|
  Header.click_toolbar_link(drop_down_link)
end

Then(/^I am redirected to the "(.*?)" page$/) do |page_title|
  $browser.text.include? page_title
  General.sign_out
end