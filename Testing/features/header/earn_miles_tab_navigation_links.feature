Feature: Earn Miles
  Verify navigation links from Earn Miles tab in header

  Scenario Outline: Earn Miles tab navigation
    Given that I am logged in as "<security level>" user on site
    When I click the "<link>" sub nav dropdown link
    And I click the "<child link>" link
    Then I should be redirected to the "<page>" page

    Scenarios: 
      | security level | link       | child link                 | page                |
      | L1             | Earn Miles | In Store                   | In Store            |
      | L1             | Earn Miles | Online                     | AIRMILES Shops      |
      | L1             | Earn Miles | On everything you purchase | Payment Options     |
      | L1             | Earn Miles | Browse Offers & Promotions | Offers & Promotions |
      | L1             | Earn Miles | How to earn AMRM           | Sponsor Home        |
      | L1.9           | Earn Miles | In Store                   | In Store            |
      | L1.9           | Earn Miles | Online                     | AIRMILES Shops      |
      | L1.9           | Earn Miles | On Everything You Purchase | Payment Options     |
      | L1.9           | Earn Miles | Browse Offers & Promotions | Offers & Promotions |
      | L1.9           | Earn Miles | How to earn AMRM           | Sponsor Home        |
      | L2             | Earn Miles | In Store                   | In Store            |
      | L2             | Earn Miles | Online                     | AIRMILES Shops      |
      | L2             | Earn Miles | On Everything You Purchase | Payment Options     |
      | L2             | Earn Miles | Browse Offers & Promotions | Offers & Promotions |
      | L2             | Earn Miles | How to earn AMRM           | Sponsor Home        |
      | L3             | Earn Miles | In Store                   | In Store            |
