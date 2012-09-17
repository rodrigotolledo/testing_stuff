Feature: Fill in form and send it
	In order to understand users preference
	As a project owner
	I want users to fill in the form and send it successfully

	Scenario: Fill in all form and send it
		Given a user is in the form page
		When the user fill in all the form
		And submit the form
		Then the user must see a confirmation message
