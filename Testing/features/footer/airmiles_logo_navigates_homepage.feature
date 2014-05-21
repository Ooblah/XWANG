Feature: AIR MILES Logo
  Verify that clicking the AIR MILES Logo in the footer redirects to Home page

  #https://www.airmiles.ca/arrow/Home
  Scenario Outline: 
    Given that I am logged in on AIR MILES site as "<security level>" user
    When I click the AIR MILES logo link "<link>"
    Then I should be redirected to Home "<page>"

    Scenarios: 
      | security level | link           | page |
      | L1             | AIR MILES logo | Home |
      | L1.9           | AIR MILES logo | Home |
      | L2             | AIR MILES logo | Home |
      | L3             | AIR MILES logo | Home |
