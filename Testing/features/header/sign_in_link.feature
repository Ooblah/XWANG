Feature: Sign In
  Verify clicking on the Sign In link displays required fields, links and buttons.

  Scenario Outline: Sign In Link
    Given that I am logged in at "<security level>" user
    When I click the Sign In link
    Then I should see the Collector Number field
    And the PIN field
    And the Continue button
    And the Forgot Collector Number link
    And the Forgot Pin / Need Help link 
    And the Remember Me check box

    Scenarios: 
      | security level | 
      | L1             | 
      | L1.9           | 







