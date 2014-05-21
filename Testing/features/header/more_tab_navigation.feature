Feature: More Tab
  Verify that clicking the links in the More tab navigates to the correct page
  https://www.airmiles.ca/arrow/GoldPageHome
  https://www.airmiles.ca/arrow/SmallBusinessHome
  https://www.airmiles.ca/arrow/Splash?splashId=15800096&amp
  https://www.facebook.com/AirMilesCanada?fref=ts 
  https://twitter.com/AIRMILES
  http://www.pinterest.com/airmilescanada/
  http://www.youtube.com/user/AIRMILESCanada
  https://www.airmiles.ca/arrow/login/SignInL3?preserveInterception=true&stateId=47#email-form
  https://www.airmiles.ca/arrow/MyPlanet?splashId=6800054
  https://www.airmiles.ca/arrow/EditMyProfile#email-form

  Scenario Outline: 
    Given that I am logged in at "<security level>"
    When I click the "<link>"
    Then I click the "<child link>"
    Then I should be redirected to the "<page>"

    Scenarios: 
      | security level | link | child link                   | page                |
      | L1             | More | AIR MILES Gold               | Gold Page Home      |
      | L1             | More | AIR MILES for Small Business | Contact Us          |
      | L1             | More | AIR MILES App                | AIR MILES App       |
      | L1             | More | Facebook                     | Facebook AIR MILES  |
      | L1             | More | Twitter                      | AIR MILES Twitter   |
      | L1             | More | Pinterest                    | AIR MILES Pinterest |
      | L1             | More | You Tube                     | AIR MILES YouTube   |
      | L1             | More | Edit My Profile              | Sign In Intercept   |
      | L1             | More | My Planet                    | My Planet           |
      | L1.9           | More | AIR MILES Gold               | Gold Page Home      |
      | L1.9           | More | AIR MILES for Small Business | Contact Us          |
      | L1.9           | More | AIR MILES App                | AIR MILES App       |
      | L1.9           | More | Facebook                     | Facebook AIR MILES  |
      | L1.9           | More | Twitter                      | AIR MILES Twitter   |
      | L1.9           | More | Pinterest                    | AIR MILES Pinterest |
      | L1.9           | More | You Tube                     | AIR MILES YouTube   |
      | L1.9           | More | Edit My Profile              | Sign In Intercept   |
      | L1.9           | More | My Planet                    | My Planet           |
      | L2             | More | AIR MILES Gold               | Gold Page Home      |
      | L2             | More | AIR MILES for Small Business | Contact Us          |
      | L2             | More | AIR MILES App                | AIR MILES App       |
      | L2             | More | Facebook                     | Facebook AIR MILES  |
      | L2             | More | Twitter                      | AIR MILES Twitter   |
      | L2             | More | Pinterest                    | AIR MILES Pinterest |
      | L2             | More | You Tube                     | AIR MILES YouTube   |
      | L2             | More | Edit My Profile              | Sign In Intercept   |
      | L2             | More | My Planet                    | My Planet           |
      | L3             | More | AIR MILES Gold               | Gold Page Home      |
      | L3             | More | AIR MILES for Small Business | Contact Us          |
      | L3             | More | AIR MILES App                | AIR MILES App       |
      | L3             | More | Facebook                     | Facebook AIR MILES  |
      | L3             | More | Twitter                      | AIR MILES Twitter   |
      | L3             | More | Pinterest                    | AIR MILES Pinterest |
      | L3             | More | You Tube                     | AIR MILES YouTube   |
      | L3             | More | Edit My Profile              | Sign In Intercept   |
      | L3             | More | My Planet                    | My Planet           |
