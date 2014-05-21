require "#{File.dirname(__FILE__)}/../../common_steps.rb" #including main.rb starts the process

Given(/^that I am logged in at "(.*?)" user$/) do |security_lvl|
  $browser.goto $base_url+$default_start_page
  General.do_login(security_lvl)
end

When(/^I click the Sign In link$/) do
  Header.click_toolbar_link("Sign In")
end

Then(/^I should see the Collector Number field$/) do
  $browser.text_field(:id=> "header_signin_overlay_collector_number").visible?
end

Then(/^the PIN field$/) do
  $browser.text_field(:id=> "header_signin_overlay_collector_pin").visible?
end

Then(/^the Continue button$/) do
  $browser.button(:name => "/atg/userprofiling/ProfileFormHandler.login").visible?
end

Then(/^the Forgot Collector Number link$/) do
  $browser.link(:id => "header_signin_overlay_find_collector_number").visible?
end

Then(/^the Forgot Pin \/ Need Help link$/) do
  $browser.link(:id => "header_signin_overlay_reset_pin").visible?

end

Then(/^the Remember Me check box$/) do
  $browser.checkbox(:id => "header-rememberme-overlay").visible?
end