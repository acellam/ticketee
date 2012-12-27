Feature: Creating Projects
In order to have projects to assign tickets to
As a user
I want to create them easily

Background:
	Given I am on the home page
	When I follow "New Project"

Scenario: Creating a project
		And I fill in "Name" with "sublime_text"
		And I press "Create Project"
	Then I should see "Project has been created."
		And I should be on the project page for "sublime_text"
		And I should see "sublime_text - Projects - Ticketee"

Scenario: Creating a project without a name
		And I press "Create Project"
	Then I should see "Project has not been created."
		And I should see "Name can't be blank"
