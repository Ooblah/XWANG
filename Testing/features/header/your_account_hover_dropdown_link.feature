Feature: Your Account Hover Drop Down Menu Links
  Verify that the drop down menu displays links and when clicked navigates to the correct page

  Scenario Outline: Your Account Link
    Given that I am logged in as "<security level>"
    When I hover over the list "<item>" item
    Then I should see the Drop Down menu
    Then I click the "<drop down link>" toolbar downdown menu link
    Then I am redirected to the "<page>" page

    Scenarios: 
      | security level | item         | drop down link         | page                       |
      | L1             | Your Account | Your Transactions      | Sign in                    |
      | L1             | Your Account | Your Profile           | Sign in                    |
      | L1             | Your Account | Set Balance Preference | Sign in                    |
      | L1             | Your Account | Order Cards            | Replace a Card             |
      | L1             | Your Account | Your Wishlist          | Wish List                  |
      | L1             | Your Account | Buy Miles              | Buy Miles                  |
      | L1             | Your Account | AIR MILES Toolbar      | Toolbar is a fast          |
      | L1             | Your Account | Lock Your Account      | Sign in                    |
      | L1.9           | Your Account | Your Transactions      | Sign in                    |
      | L1.9           | Your Account | Your Profile           | Sign in                    |
      | L1.9           | Your Account | Set Balance Preference | Sign in                    |
      | L1.9           | Your Account | Order Cards            | Replace a Card             |
      | L1.9           | Your Account | Your Wishlist          | Wish List                  |
      | L1.9           | Your Account | Buy Miles              | Buy Miles                  |
      | L1.9           | Your Account | AIR MILES Toolbar      | Toolbar is a fast          |
      | L1.9           | Your Account | Lock Your Account      | Sign in                    |
      | L2             | Your Account | Your Transactions      | Sign in                    |
      | L2             | Your Account | Your Profile           | Sign in                    |
      | L2             | Your Account | Set Balance Preference | Sign in                    |
      | L2             | Your Account | Order Cards            | Replace a Card             |
      | L2             | Your Account | Your Wishlist          | Wish List                  |
      | L2             | Your Account | Buy Miles              | Buy Miles                  |
      | L2             | Your Account | AIR MILES Toolbar      | Toolbar is a fast          |
      | L2             | Your Account | Lock Your Account      | Sign in                    |
      | L3             | Your Account | Your Transactions      | Account Statements History |
      | L3             | Your Account | Your Profile           | My Profile                 |
      | L3             | Your Account | Set Balance Preference | Earn Ratio                 |
      | L3             | Your Account | Order Cards            | Replace a Card             |
      | L3             | Your Account | Your Wishlist          | Wish List                  |
      | L3             | Your Account | Buy Miles              | Buy Miles                  |
      | L3             | Your Account | AIR MILES Toolbar      | Toolbar is a fast          |
      | L3             | Your Account | Lock Your Account      | Lock my Account            |
