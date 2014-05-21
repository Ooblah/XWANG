Feature: Sub navigation Home tab
  Verify the clicking on Home page redirects to Home page

  #https://www.airmiles.ca/arrow/Home
  Scenario Outline: Sub navigation Home tab
    Given that I am logged in as a user with "<security level>"
    When I click the link "<link>"
    Then I am redirected to the "<page>" page 

    Scenarios: 
      | security level | link | page |
      | L1             | Home | Home |
      | L1.9           | Home | Home |
      | L2             | Home | Home |
      | L3             | Home | Home |
