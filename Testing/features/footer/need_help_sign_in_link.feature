Feature: Need Help Column Sign In link
  Verify that clicking the sign in link in the Need Help column navigates to Sign in page

  Scenario Outline: 
    Given that I am logged in as a user with "<security level>" security on airmiles site
    When I click the sign in link "<link>"
    Then I should be redirected to the sign in page "<page>" 

    Scenarios: 
      | security level | link    | page                                        |
      | L1             | Sign In | Sign in and make the most of your AIR MILES |
      | L1.9           | Sign In | Sign in and make the most of your AIR MILES |
      | L2             | Sign In | Sign in and make the most of your AIR MILES |
