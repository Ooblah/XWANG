Feature: Sign In Check Balance and Name
  Verify that I can see my balances and name based on log in.

  Scenario Outline: Sign in Check Balances and Name
    Given I am logged in as "<security level>" user on site
	Then I should see my cash balance "<cash balance>" 
	Then I should see my dream balance "<dream balance>" 
	And I should see my name "<name>"

    Scenarios: 
      |security level 	| cash balance	| dream balance 	|name	|
	  |L1 				| false			| false				| false	|
	  |L1.9 			| false			| false				| false	|
	  |L2 				| true			| true				| true	|
	  |L3 				| true			| true				| true	|
