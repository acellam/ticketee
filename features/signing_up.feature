Feature: Signing Up
In order to be attributed to my work
As a user
I want to be able to sign up

Scenario: Signing Up
Given I am on the home page
	And I follow "Sign up"
	And I fill in "Email" with "user@ticketee.com"
	And I fill in "Password" with "password"
	And I fill in "Confirmation" with "password"
	And I press "Sign up"
Then I should see "You have signed up successfully."