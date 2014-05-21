Feature: Earn Miles Column
  Verify that clicking the links in the Earn Miles Column navigates to the correct page

  Scenario Outline: 
    Given that I am logged in as user with "<security level>" security on site
    When I click the Earn Miles upper footer child link "<link>"
    Then I should be redirected to the relevant page "<page>"

    Scenarios: 
      | security level | link                  | page                                                                |
      | L1             | In Store              | With more than 120 Sponsors and 100 online Sponsors                 |
      | L1             | AIR MILES Shops       | Earn reward miles online at over 100 sites!                         |
      | L1             | Payment Products      | With more than 120 Sponsors and 100 online Sponsors                 |
      | L1             | Offers & Promotions   | Limited time offers to help you earn AIR MILES reward miles faster. |
      | L1             | Promotional Sponsors  | Promotional Sponsors                                                |
      | L1             | Buy Miles             | Short on reward miles but                                           |
      | L1             | Deposit Rewards Miles | Deposit now                                                         |
      | L1             | Inspired Living       | More Articles                                                       |
      | L1.9           | In Store              | With more than 120 Sponsors and 100 online Sponsors                 |
      | L1.9           | AIR MILES Shops       | Earn reward miles online at over 100 sites!                         |
      | L1.9           | Payment Products      | With more than 120 Sponsors and 100 online Sponsors                 |
      | L1.9           | Offers & Promotions   | Limited time offers to help you earn AIR MILES reward miles faster. |
      | L1.9           | Promotional Sponsors  | Promotional Sponsors                                                |
      | L1.9           | Buy Miles             | Short on reward miles but                                           |
      | L1.9           | Deposit Rewards Miles | Deposit now                                                         |
      | L1.9           | Inspired Living       | More Articles                                                       |
      | L2             | In Store              | With more than 120 Sponsors and 100 online Sponsors                 |
      | L2             | AIR MILES Shops       | Earn reward miles online at over 100 sites!                         |
      | L2             | Payment Products      | With more than 120 Sponsors and 100 online Sponsors                 |
      | L2             | Offers & Promotions   | Limited time offers to help you earn AIR MILES reward miles faster. |
      | L2             | Promotional Sponsors  | Promotional Sponsors                                                |
      | L2             | Buy Miles             | Short on reward miles but                                           |
      | L2             | Deposit Rewards Miles | Deposit now                                                         |
      | L2             | Inspired Living       | More Articles                                                       |
      | L3             | In Store              | With more than 120 Sponsors and 100 online Sponsors                 |
      | L3             | AIR MILES Shops       | Earn reward miles online at over 100 sites!                         |
      | L3             | Payment Products      | With more than 120 Sponsors and 100 online Sponsors                 |
      | L3             | Offers & Promotions   | Limited time offers to help you earn AIR MILES reward miles faster. |
      | L3             | Promotional Sponsors  | Promotional Sponsors                                                |
      | L3             | Buy Miles             | Short on reward miles but                                           |
      | L3             | Deposit Rewards Miles | Deposit now                                                         |
      | L3             | Inspired Living       | More Articles                                                       |
