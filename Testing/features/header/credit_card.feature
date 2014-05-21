Feature: Cash Optin for Supressed collectors
  Verify that cash Optin module displays for the suppressed collectors 

  Scenario Outline: Cash Optin for suppressed collectors.
    Given that I Login as "<security level>" with "<Collector Number>" collector and "<pin>" pin
  When I click Home tab
  Then the visibility of the Cash module as "< Opt in-Module Display >"
Scenarios: 
      |Security level| Collector Number | Pin  | Opt in-Module Display   |                 
      |L2             | 50000361822     |    | false                     |   
      |L3|             | 50000361822    | 1111| true                       |

