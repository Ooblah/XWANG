Feature: Enroll Now
  Verify the Enroll Now link redirects to Enroll Now Page:
  redirect url should be https://www.airmiles.ca/arrow/EnrollmentAllStep0
  
  Scenario Outline: Enroll Now link
    Given that I am logged in at "<security level>" user on site
    When I click the "<link>" link
    And I should be redirected to the "<page>" page 
    And I click "I don't have a card." link
    And I provide all the details in the EnrollmentConsumerStep1 pages
    Then Enrollment is succesful
    And I should see the EnrollmentConfirm page
    And I should see the Balance as "0" in the header
    And I should see the name in the header

    Scenarios: 
      | security level | link       | page       |
      | L1             | Enroll Now | Enroll Now |
      | L1.9           | Enroll Now | Enroll Now |
      | L2             | Enroll Now | Enroll Now |
      | L3             | Enroll Now | Enroll Now |
