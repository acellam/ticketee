Feature: Viewing Projects
In order to assign tickets to a project
As a user
I want to be able to see a list of available projects

Scenario: Listing all projects
	Given there is a project called "sublime_text"
		And I am on the home page
	When I follow "sublime_text"
	Then I should  be on the project page for "sublime_text"