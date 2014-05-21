require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in with security level "(.*?)" on airmiles site$/) do |arg1|
  $browser.goto $base_url+$default_start_page
  General.do_login(arg1)
end

When(/^I click the footer "(.*?)"$/) do |arg1|
  Footer.click_bottom_footer_link(arg1)
end

Then(/^I should be redirected to the page"(.*?)"$/) do |arg1|
  if(arg1 == "Top 5 most commonly asked questions" || arg1 == "Working At LoyaltyOne")
    $logger.info "step1"
    $browser.windows.last.use do
      Watir::Wait.until {$browser.text.include}
      ($browser.text.include? arg1).should == true
    end
  else
    $logger.info "step2"
    Watir::Wait.until {$browser.text.include? arg1}
    ($browser.text.include? arg1).should == true
  end
  $logger.info "step3"
end
