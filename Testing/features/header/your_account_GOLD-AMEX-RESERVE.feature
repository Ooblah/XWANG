Feature: Your Account Drop Down Menu
  Verify Your Account drop down Menu displays GOLD Amex Reserve for  different segmented collectors

  Scenario Outline: Your Account segmentated items
    Given that I Login as L3 with "<Collector Number>" collector and "<pin>" pin
    When I hover over your account link
    Then I should see "<linkID>" link in the your account overlay on mouse hover
    And I should be redirected to "<page>" page when "<linkID>" link is clicked

    Scenarios: 
      | Collector Number | Pin  | linkID                     | page                        |
      | 51000145143      | 1111 | header-toolbar-am-gold     | Your Gold Benefits          |
      | 51000145264      | 1111 | header-toolbar-am-amex     | Welcome to American Express |
      | 51000145232      | 1111 | header-toolbar-am-business | Amex For Business           |
