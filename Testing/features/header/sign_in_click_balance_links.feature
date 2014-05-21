Feature: Sign In Click Balance Links
  Verify that clicking balance links navigates to correct page

  Scenario Outline: 
    Given I am logged in as "<security level>" user on site
    Then I see my "<balance>" balance
    Then I click my "<balance link>" balance link
    Then I should be on the "<page>" page

    Scenarios: 
      | security level | balance | balance link | page          |
      | L2             | true    | Cash         | Cash Overview |
      | L3             | true    | Dream        | Rewards Home  |
