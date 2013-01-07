Feature: Deleting Tickets
In order to remove tickets
As a user
I want to press a button and make them disappear

Background: 
	Given there are the following users:
	| email				 | password 			|
	| user@ticketee.com  | password             | 
		And there is a project called "sublime_text"
		And "user@ticketee.com" has created a ticket for this project:
		| title						| description					|
		| Make it shiny!			| Gradients! Starbursts! Oh my! |
	And I am signed in as them
	Given I am on the home page
	When I follow "sublime_text"
		And I follow "Make it shiny!"

Scenario: Delete a ticket
	When I follow "Delete Ticket"
	Then I should see "Ticket has been deleted."
		And I should  be on the project page for "sublime_text"