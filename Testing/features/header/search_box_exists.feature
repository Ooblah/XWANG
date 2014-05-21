Feature: Search Box
	Verify that the search box is present on the home page.

Scenario Outline: Search Box is present
	Given that I am logged in with "<security level>" security level on the site
	Then I should see the "<field>" field

Scenarios:
	|security level 	| field  			| 
	| L1				| Header Search Box	| 
	| L1.9				| Header Search Box	| 
	| L2				| Header Search Box	| 
	| L3				| Header Search Box	| 
