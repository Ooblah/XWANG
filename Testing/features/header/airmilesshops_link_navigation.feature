Feature: Sub navigation Airmilesshop
  Verify AirMilesShop sub navigation  redirects to proper URL and maintains the login level.

  Scenario Outline: Sub navigation Airmilesshop Loggin in/out
    Given that I am logged in as "<security level>" user on AIR MILES site
    When I click the AIR MILES shops link
    Then I should be redirected to the AIR MILES shops site
    Then I should "<name_visible_in_shops>" "<collector name>" on the site.

    Scenarios: 
      | security level | collector name | name_visible_in_shops |
      | L1             | GREGORY        | not see               |
      | L1.9           | GREGORY        | not see               |
      | L2             | GREGORY        | see                   |
      | L3             | GREGORY        | see                   |
