Feature: Redeem Miles Column
  Verify that clicking the links in the Redeem Miles Column navigates to the correct page.

  Scenario Outline: 
    Given that I am logged in as a user with "<security level>" security on site
    When I click the upper footer child link "<link>"
    Then I should be redirected to the relevant "<page>" page

    Scenarios: 
      | security level | link                        | page                                                                |
      | L1             | AIR MILES Cash              | AIR MILES Cash and Dream                                            |
      | L1             | Dream Rewards               | Cash + MilesTM Rewards                                              |
      | L1             | Set your balance preference | Enter your Collector number and PIN to set or view your preference. |
      | L1             | Deals & More                | Dream Rewards / Deals & More                                        |
      | L1             | Travel                      | Our Preferred Airline Partners                                      |
      | L1             | Gift Guide                  | Find something perfect for                                          |
      | L1.9           | AIR MILES Cash              | AIR MILES Cash and Dream                                            |
      | L1.9           | Dream Rewards               | Cash + MilesTM Rewards                                              |
      | L1.9           | Set your balance preference | Enter your Collector number and PIN to set or view your preference. |
      | L1.9           | Deals & More                | Dream Rewards / Deals & More                                        |
      | L1.9           | Travel                      | Our Preferred Airline Partners                                      |
      | L1.9           | Gift Guide                  | Find something perfect for                                          |
      | L2             | AIR MILES Cash              | AIR MILES Cash and Dream                                            |
      | L2             | Dream Rewards               | Cash + MilesTM Rewards                                              |
      | L2             | Set your balance preference | Enter your Collector number and PIN to set or view your preference. |
      | L2             | Deals & More                | Dream Rewards / Deals & More                                        |
      | L2             | Travel                      | Our Preferred Airline Partners                                      |
      | L2             | Gift Guide                  | Find something perfect for                                          |
      | L3             | AIR MILES Cash              | AIR MILES Cash and Dream                                            |
      | L3             | Dream Rewards               | Cash + MilesTM Rewards                                              |
      | L3             | Set your balance preference | Earn Ratio                                                          |
      | L3             | Deals & More                | Dream Rewards / Deals & More                                        |
      | L3             | Travel                      | Our Preferred Airline Partners                                      |
      | L3             | Gift Guide                  | Find something perfect for                                          |
