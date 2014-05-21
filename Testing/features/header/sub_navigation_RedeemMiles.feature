Feature: Redeem Miles Sub navigation
  Verify Redeem Miles sub navigation has drop down and those drop down menu redirects to URL.

  #https://www.airmiles.ca/arrow/CashRewardsHome
  #https://www.airmiles.ca/arrow/RewardsHome?selectedCategoryId=cat670016
  #https://www.airmiles.ca/arrow/login/SignInL3Preferences?preserveInterception=true&stateId=8
  #https://www.airmiles.ca/arrow/EarnRatio
  Scenario Outline: Redeem Miles Sub navigation
    Given that I am logged in as "<security level>" user
    When I click the Redeem Miles link "<link>" 
    Then I click the child link "<child link>"
    Then I should be redirected to the page "<page>"

    Scenarios: 
      | security level | link         | child link                  | page              |
      | L1             | Redeem Miles | AIR MILES Cash              | Cash Rewards Home |
      | L1             | Redeem Miles | Dream Rewards               | Rewards Home      |
      | L1             | Redeem Miles | Set Your Balance Preference | Log in intercept  |
      | L1.9           | Redeem Miles | AIR MILES Cash              | Cash Rewards Home |
      | L1.9           | Redeem Miles | Dream Rewards               | Rewards Home      |
      | L1.9           | Redeem Miles | Set Your Balance Preference | Log in intercept  |
      | L2             | Redeem Miles | AIR MILES Cash              | Cash Rewards Home |
      | L2             | Redeem Miles | Dream Rewards               | Rewards Home      |
      | L2             | Redeem Miles | Set Your Balance Preference | Log in intercept  |
      | L3             | Redeem Miles | AIR MILES Cash              | Cash Rewards Home |
      | L3             | Redeem Miles | Dream Rewards               | Rewards Home      |
      | L3             | Redeem Miles | Set Your Balance Preference | Earn Ratio        |
