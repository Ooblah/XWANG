Feature: Need Help navigation links
	Verify that clicking the links in the Need Help tab navigate to the correct page

Scenario Outline: Need Help links
	Given that I am logged in at "<security level>"
	When I click the "<link>"
	And I click the "<child link>"
	Then I should be redirected to the "<page>"

Scenarios:
	|security level 	| link  		| child link 			| page						|
	| L1				| Need Help		| Reset Your PIN		| FAQ Security & Privacy	|
	| L1				| Need Help		| Missing Miles			| Contact Us				|
	| L1				| Need Help		| Change Your Address	| FAQ Managing My Account	|
	| L1				| Need Help		| Flight Rewards		| FAQ Redeeming Miles	 	|
	| L1				| Need Help		| AIR MILES Cash		| FAQ AIR MILES Cash		|
	| L1				| Need Help		| Self-Serve Tools		| Self-Serve Tools			|
	| L1				| Need Help		| Browse FAQs			| Help						|
	| L1				| Need Help		| Chat Live				| Live Chat					|
	| L1				| Need Help		| Learn How It Works	| How It Works				|
	| L1.9				| Need Help		| Reset Your PIN		| FAQ Security & Privacy	|
	| L1.9				| Need Help		| Missing Miles			| Contact Us				|
	| L1.9				| Need Help		| Change Your Address	| FAQ Managing My Account	|
	| L1.9				| Need Help		| Flight Rewards		| FAQ Redeeming Miles	 	|
	| L1.9				| Need Help		| AIR MILES Cash		| FAQ AIR MILES Cash		|
	| L1.9				| Need Help		| Self-Serve Tools		| Self-Serve Tools			|
	| L1.9				| Need Help		| Browse FAQs			| Help						|
	| L1.9				| Need Help		| Chat Live				| Live Chat					|
	| L1.9				| Need Help		| Learn How It Works	| How It Works				|
	| L2				| Need Help		| Reset Your PIN		| FAQ Security & Privacy	|
	| L2				| Need Help		| Missing Miles			| Contact Us				|
	| L2				| Need Help		| Change Your Address	| FAQ Managing My Account	|
	| L2				| Need Help		| Flight Rewards		| FAQ Redeeming Miles	 	|
	| L2				| Need Help		| AIR MILES Cash		| FAQ AIR MILES Cash		|
	| L2				| Need Help		| Self-Serve Tools		| Self-Serve Tools			|
	| L2				| Need Help		| Browse FAQs			| Help						|
	| L2				| Need Help		| Chat Live				| Live Chat					|
	| L2				| Need Help		| Learn How It Works	| How It Works				|
	| L3				| Need Help		| Reset Your PIN		| FAQ Security & Privacy	|
	| L3				| Need Help		| Missing Miles			| Contact Us				|
	| L3				| Need Help		| Change Your Address	| FAQ Managing My Account	|
	| L3				| Need Help		| Flight Rewards		| FAQ Redeeming Miles	 	|
	| L3				| Need Help		| AIR MILES Cash		| FAQ AIR MILES Cash		|
	| L3				| Need Help		| Self-Serve Tools		| Self-Serve Tools			|
	| L3				| Need Help		| Browse FAQs			| Help						|
	| L3				| Need Help		| Chat Live				| Live Chat					|
	| L3				| Need Help		| Learn How It Works	| How It Works				|
