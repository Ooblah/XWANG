require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as "(.*?)" on the "(.*?)" page$/) do |security_level, page|
  $logger.info('In 1st step')
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level, page)
end

When(/^I click the AIR MILES Card$/) do
  $logger.info('In 2nd step')
  Header.click_airmiles_card()
  $logger.info('clicked card in step 2')
end

Then(/^I should be redirected to the Home page$/) do
  $logger.info('In last step')

  HomePage.on_homepage()
  General.sign_out()
  Header.click_airmiles_card()
end