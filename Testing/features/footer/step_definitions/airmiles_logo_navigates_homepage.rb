require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in on AIR MILES site as "(.*?)" user$/) do |arg1|
  $browser.goto $base_url+$default_start_page
  General.do_login(arg1)
end

When(/^I click the AIR MILES logo link "(.*?)"$/) do |arg1|
  $logger.info("Click Footer.click_upper_footer_link("+arg1+")")
  Footer.click_upper_footer_link(arg1)
end

Then(/^I should be redirected to Home "(.*?)"$/) do |arg1|
  ($browser.title == "AIR MILES - Home").should == true
end