require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in with "(.*?)" security on the site$/) do |sec_lvl|
  $browser.goto $base_url+$default_start_page
  General.do_login(sec_lvl)
end

When(/^I click the "(.*?)" icon$/) do |link_name|
  Header.click_toolbar_link(link_name)
end

Then(/^I should be redirected to the Shopping Cart page$/) do
  $browser.div(:id => "cart_progress").exists?
end

Then(/^Sign In button visibility should be "(.*?)"$/) do |boolean_visibility|
  if($browser.div(:class => "login-bubble").exists? != boolean_visibility)
    $browser.div(:class => "login-bubble").exists?
  end
end