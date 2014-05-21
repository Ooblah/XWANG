Feature: Shopping Cart
  Verify that clicking the Shopping Cart icon navigates to the correct page

  #https://www.airmiles.ca/arrow/ShoppingCart
  Scenario Outline: 
    Given that I am logged in with "<security level>" security on the site
    When I click the "<icon>" icon
    Then I should be redirected to the Shopping Cart page
    Then Sign In button visibility should be "<button visibility>"

    Scenarios: 
      | security level | icon          | button visibility |
      | L1             | Shopping Cart | true              |
      | L1.9           | Shopping Cart | true              |
      | L2             | Shopping Cart | true              |
      | L3             | Shopping Cart | false             |
