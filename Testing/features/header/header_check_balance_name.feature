Feature: Check Balance/ Name
  If I am signed in on airmiles.ca I want to see my balance and name in header

  Scenario: Check Balance/ Name
    Given that I am on the airmiles site
    When I login
    Then I should see my balance in header
    And I should see my name in header
