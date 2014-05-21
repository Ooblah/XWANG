require "#{File.dirname(__FILE__)}/../../common_steps.rb" #including main.rb starts the process
$logger.info("Executing feature: Your Account Link")

Given(/^that I am logged in as "(.*?)" user$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

When(/^I click the "(.*?)" link$/) do |your_acct_link|
  $logger.info('Click on '+your_acct_link+' link')
  Header.click_toolbar_link(your_acct_link)
end

Then(/^I should be redirected to the "(.*?)" page$/) do |page_title|
  ($browser.title.casecmp page_title).should == 0
  General.sign_out
end