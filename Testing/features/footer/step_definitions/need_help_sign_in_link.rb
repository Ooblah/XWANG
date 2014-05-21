require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as a user with "(.*?)" security on airmiles site$/) do |arg1|
  $logger.info("security_Level"+arg1)
  $browser.goto $base_url+$default_start_page
  General.do_login(arg1)
end

When(/^I click the sign in link "(.*?)"$/) do |arg1|
  Footer.click_upper_footer_link(arg1)
end

Then(/^I should be redirected to the sign in page "(.*?)"$/) do |arg1|
    ($browser.text.include? arg1).should == true
end