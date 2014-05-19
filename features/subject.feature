Feature: Create subject
	In order to use subjects
	An Administrator
	should create a subject by subject form

	Scenario: create a subject
		Given I am on the new subject page
		And I fill in "subject title" with "My subject"
		And I fill in "subject note" with "This is a note for my subject"
		When I press "create subject"
		Then the id "notice" should contain "Subject was successfully created."
