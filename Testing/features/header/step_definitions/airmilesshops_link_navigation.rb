require "#{File.dirname(__FILE__)}/../../common_steps.rb" #including commons.rb starts the process

Given(/^that I am logged in as "(.*?)" user on AIR MILES site$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level)
end

When(/^I click the AIR MILES shops link/) do 
  Header.click_subnav_main_link("airmilesshops")
end

Then(/^I should be redirected to the AIR MILES shops site$/) do
  $browser.text.include? "airmilesshops.ca - Welcome"
end

Then(/^I should "(.*?)" "(.*?)" on the site\.$/) do |condition, collector_name|
  if(condition == "see")
    $browser.text.include? collector_name
  else
    $browser.div(:class => "bubble error").should exist
  end
end