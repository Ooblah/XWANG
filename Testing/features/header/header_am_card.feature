Feature: AIR MILES Card
  Verify AIR MILES Card click redirects to homepage

  Scenario Outline: AIR MILES Card
    Given that I am logged in as "<security level>" on the "<page>" page
    When I click the AIR MILES Card
    Then I should be redirected to the Home page

    Scenarios: 
      | security level | page |
      | L1             | Home |
      | L1.9           | Home |
      | L2             | Home |
      | L3             | Home |
