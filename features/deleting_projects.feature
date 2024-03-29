Feature: Deleting Projects
	In order to remove needless projects
	As a manager
	I want to make them disappear

Background:
	Given there are the following users:
	| email               | password | admin  |
	| user@ticketee.com   | password | true   |
	And I am signed in as them

Scenario: Deleting a project
	Given there is a project called "sublime_text"
		And I am on the home page
	When I follow "sublime_text"
		And I follow "Delete Project"
	Then I should see "Project has been deleted."
		And I should not see "sublime_text"


