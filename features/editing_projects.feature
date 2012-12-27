Feature: Editing Projects
In order to update the project information
As a user
I want to be able to do that through an interface

Background:
	Given there is a project called "sublime_text"
		And I am on the home page
	When I follow "sublime_text"
		And I follow "Edit Project"

Scenario: Updating a project	
		And I fill in "Name" with "sublime_text beta"
		And I press "Update Project"
	Then I should see "Project has been updated."	
	Then I should  be on the project page for "sublime_text beta"

Scenario: Updating a project with invalid attributes is bad
		And I fill in "Name" with ""
		And I press "Update Project"
	Then I should see "Project has not been updated."
	