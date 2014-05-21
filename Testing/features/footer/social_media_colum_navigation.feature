Feature: Social Media Column Navigation
	Verify that clicking the links in the Social Media Column navigate to the correct page

Scenario Outline: 
	Given that I am logged in at "<security level>"
	When I click the "<link>"
	Then I should be redirected to the "<page>"
#https://www.facebook.com/AirMilesCanada
#https://www.facebook.com/r.php
#https://twitter.com/AIRMILES
#http://www.pinterest.com/airmilescanada/
#http://www.youtube.com/user/AIRMILESCanada

Scenarios:
|security level 	| link  				| page 					|
| L1				| Find Us on Facebook	| Facebook AIR MILES 	|	
| L1				| Facebook Sign up		| Facebook Sign Up		|
| L1				| Twitter				| AIR MILES Twitter		|
| L1				| Pinterest				| AIR MILES Pinterest 	|
| L1				| YouTube				| AIR MILES YouTube		|	
| L1.9				| Find Us on Facebook	| Facebook AIR MILES 	|	
| L1.9				| Facebook Sign up		| Facebook Sign Up		|
| L1.9				| Twitter				| AIR MILES Twitter		|
| L1.9				| Pinterest				| AIR MILES Pinterest 	|
| L1.9				| YouTube				| AIR MILES YouTube		|
| L2				| Find Us on Facebook	| Facebook AIR MILES 	|	
| L2				| Facebook Sign up		| Facebook Sign Up		|
| L2				| Twitter				| AIR MILES Twitter		|
| L2				| Pinterest				| AIR MILES Pinterest 	|
| L2				| YouTube				| AIR MILES YouTube		|
| L3				| Find Us on Facebook	| Facebook AIR MILES 	|	
| L3				| Facebook Sign up		| Facebook Sign Up		|
| L3				| Twitter				| AIR MILES Twitter		|
| L3				| Pinterest				| AIR MILES Pinterest 	|
| L3				| YouTube				| AIR MILES YouTube		|
