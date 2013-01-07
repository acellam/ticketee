Feature: Editing Tickets
In order to alter ticket information
As a user
I want a form to edit the tickets

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
	When I follow "Edit Ticket"

Scenario: Updating a Ticket
	When I fill in "Title" with "Make it really shiny!"
		And I press "Update Ticket"
	Then I should see "Ticket has been updated."
		And I should see "Make it really shiny!" within "#ticket h2"
		But I should not see "Make it shiny!"

Scenario: Updaing a Ticket with invalid information
	When I fill in "Title" with ""
		And I press "Update Ticket"
	Then I should see "Ticket has not been updated."

