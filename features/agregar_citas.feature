Feature:
	In order to manage citations
	for the user
	I want to create a interface that will help users adding citations
	
	Scenario: the user will need to sign up for the service
		Given that I'm a new user
		When I go to the registration page
		And I fill in "user name" with "johndoe"
		And I fill in "email" with "john@doe.com"
		And I fill in "password" with "supersecret"
		And I press "submit"
		Then I should see "You're now registered!"