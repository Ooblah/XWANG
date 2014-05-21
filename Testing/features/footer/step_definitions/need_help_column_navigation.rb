require "#{File.dirname(__FILE__)}/../../common_steps.rb"

Given(/^that I am logged in as a user with "(.*?)" security on site$/) do |arg1|
  $logger.info("security_Level"+arg1)
  $browser.goto $base_url+$default_start_page
  General.do_login(arg1)
end

When(/^I click the upper footer child link "(.*?)"$/) do |arg1|
  Footer.click_upper_footer_link(arg1)
end

Then(/^I should be redirected to the relevant "(.*?)" page$/) do |arg1|
  $logger.info arg1
  if(arg1 == "Top 5 most commonly asked questions")
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