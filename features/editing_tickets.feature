Feature: Editing Tickets
In order to alter ticket information
As a user
I want a form to edit the tickets

Background:
	Given there is a project called "sublime_text"
		And that project has a ticket:
			| title 				| description			       |
			| Make it shiny!		| Gradients! Starburts! Oh my! |
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

