require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as "(.*?)" user$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

When(/^I click the Redeem Miles link "(.*?)"$/) do |link_name|
  $browser.click_subnav_child_link(link_name)
end

Then(/^I click the child link "(.*?)"$/) do |child_link|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be redirected to the page "(.*?)"$/) do |page_with_text|
  pending # express the regexp above with the code you wish you had
end
