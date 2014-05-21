Feature: Lower Footer
  Verify that links on the lower footer navigate to the correct page

  Scenario Outline: 
    Given that I am logged in with security level "<security level>" on airmiles site
    When I click the footer "<link>"
    Then I should be redirected to the page"<page>"

    Scenarios: 
      | security level | link                   | page                                                         |
      | L1             | Contact Us Bottom      | Get in touch with us using any way that's convenient for you |
      | L1             | Help                   | View All Self-Serve Tools                                    |
      | L1             | Site Map               | Ever wonder how you got there from here?                     |
      | L1             | Legal                  | Terms and Conditions of the AIR MILES                        |
      | L1             | Privacy                | Protecting Your Privacy                                      |
      | L1             | About Us               | About the AIR MILES                                          |
      | L1             | Business Opportunities | Coalition Loyalty                                            |
      | L1             | Careers                | Working At LoyaltyOne                                        |
      | L1.9           | Contact Us Bottom      | Get in touch with us using any way that's convenient for you |
      | L1.9           | Help                   | View All Self-Serve Tools                                    |
      | L1.9           | Site Map               | Ever wonder how you got there from here?                     |
      | L1.9           | Legal                  | Terms and Conditions of the AIR MILES                        |
      | L1.9           | Privacy                | Protecting Your Privacy                                      |
      | L1.9           | About Us               | About the AIR MILES                                          |
      | L1.9           | Business Opportunities | Coalition Loyalty                                            |
      | L1.9           | Careers                | Working At LoyaltyOne                                        |
      | L2             | Contact Us Bottom      | Get in touch with us using any way that's convenient for you |
      | L2             | Help                   | View All Self-Serve Tools                                    |
      | L2             | Site Map               | Ever wonder how you got there from here?                     |
      | L2             | Legal                  | Terms and Conditions of the AIR MILES                        |
      | L2             | Privacy                | Protecting Your Privacy                                      |
      | L2             | About Us               | About the AIR MILES                                          |
      | L2             | Business Opportunities | Coalition Loyalty                                            |
      | L2             | Careers                | Working At LoyaltyOne                                        |
      | L3             | Contact Us Bottom      | Get in touch with us using any way that's convenient for you |
      | L3             | Help                   | View All Self-Serve Tools                                    |
      | L3             | Site Map               | Ever wonder how you got there from here?                     |
      | L3             | Legal                  | Terms and Conditions of the AIR MILES                        |
      | L3             | Privacy                | Protecting Your Privacy                                      |
      | L3             | About Us               | About the AIR MILES                                          |
      | L3             | Business Opportunities | Coalition Loyalty                                            |
      | L3             | Careers                | Working At LoyaltyOne                                        |
