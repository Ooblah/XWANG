Feature: Need Help Footer Column
  Verify that clicking on the links in the Need Help column navigates to the correct page.

  Scenario Outline: 
    Given that I am logged in as a user with "<security level>" security on site
    When I click the upper footer child link "<link>"
    Then I should be redirected to the relevant "<page>" page

    Scenarios: 
      | security level | link                      | page                                                         |
      | L1             | Browse FAQs               | How can we help you today?                                   |
      | L1             | Self-Serve Tools          | Self-Serve Tools                                             |
      | L1             | Learn How AIR MILES Works | 3 Easy Steps to Rewards with                                 |
      | L1             | Live Chat                 | Top 5 most commonly asked questions                          |
      | L1             | Contact Us                | Get in touch with us using any way that's convenient for you |
      | L1.9           | Browse FAQs               | How can we help you today?                                   |
      | L1.9           | Self-Serve Tools          | Self-Serve                                                   |
      | L1.9           | Learn How AIR MILES Works | 3 Easy Steps to Rewards with                                 |
      | L1.9           | Live Chat                 | Top 5 most commonly asked questions                          |
      | L1.9           | Contact Us                | Get in touch with us using any way that's convenient for you |
      | L2             | Browse FAQs               | How can we help you today?                                   |
      | L2             | Self-Serve Tools          | Self-Serve                                                   |
      | L2             | Learn How AIR MILES Works | 3 Easy Steps to Rewards with                                 |
      | L2             | Live Chat                 | Top 5 most commonly asked questions                          |
      | L2             | Contact Us                | Get in touch with us using any way that's convenient for you |
      | L3             | Browse FAQs               | How can we help you today?                                   |
      | L3             | Self-Serve Tools          | Self-Serve                                                   |
      | L3             | Learn How AIR MILES Works | 3 Easy Steps to Rewards with                                 |
      | L3             | Live Chat                 | Top 5 most commonly asked questions                          |
      | L3             | Contact Us                | Get in touch with us using any way that's convenient for you |
