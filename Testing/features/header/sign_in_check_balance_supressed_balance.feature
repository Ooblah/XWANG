Feature: Sign In Check Balance Suppressed Balance
	Verify that sign in and check balances with supressed balance

Scenario Outline:
Given that I am logged in at “<security level>” 
Then I should see my “<Cash Balance>” 
Then I should see my “<Dream Balance>” 
Then I should see my “<name>”

Scenarios:
|security level 	| balance	| name		|
|L1 		| false		| false		|
|L1.9 		| false		| false		|
|L2 		| false		| false		|
|L3 		| true		| true		|
