Feature: Your Account Link
  Verify clicking on Your Account link naviagates to new page based on log in

  Scenario Outline: Your Account Link
    Given that I am logged in as "<security level>" user
    When I click the "<link>" link 
    Then I should be redirected to the "<page>" page

    Scenarios: 
      | security level | link         | page         |
      | L1             | Your Account | Sign In      |
      | L1.9           | Your Account | Sign In      |
      | L2             | Your Account | Sign In      |
      | L3             | Your Account | My Account	 |
