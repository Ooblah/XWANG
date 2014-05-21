require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in with "(.*?)" security level on the site$/) do |security_level|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_level, "Home")
end

Then(/^I should see the "(.*?)" field$/) do |search_box|
  $browser.text_field(:id => 'searchText', :value => 'Search').click
end