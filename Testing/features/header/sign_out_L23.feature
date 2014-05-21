Feature: Sign Out
  Verify that I can sign out at L2 and L3

  Scenario Outline: Sign Out L2 L3
    Given that I am logged in at "<security level>" user on site 
	When I click the "<button>" sign out link
	Then I should be redirected to the "<page>" sign out page
	And I should see my "<balance>" balance
	And I should see my "<name>" name

    Scenarios: 
      |security level 		| button	| page		| balance	| name		|
	  |L2 					|Sign Out	| Sign Out 	| false		| false		|
	  |L3 					|Sign Out	| Sign Out	| false		| false		|
