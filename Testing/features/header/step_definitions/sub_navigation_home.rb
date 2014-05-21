require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as a user with "(.*?)"$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

When(/^I click the link "(.*?)"$/) do |link_name|
  Header.click_subnav_main_link(link_name)
end

Then(/^I am redirected to the "(.*?)" page $/) do |page_unique_text|
  $browser.text.include? page_unique_text
  General.sign_out
end
