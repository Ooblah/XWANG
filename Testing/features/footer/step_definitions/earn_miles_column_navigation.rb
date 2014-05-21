require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as user with "(.*?)" security on site$/) do |arg1|
  $browser.goto $base_url+$default_start_page
  General.do_login(arg1)
end

When(/^I click the Earn Miles upper footer child link "(.*?)"$/) do |arg1|
  $logger.info("Click Footer.click_upper_footer_link("+arg1+")")
  Footer.click_upper_footer_link(arg1)
end

Then(/^I should be redirected to the relevant page "(.*?)"$/) do |arg1|
  ($browser.text.include? arg1).should == true
end