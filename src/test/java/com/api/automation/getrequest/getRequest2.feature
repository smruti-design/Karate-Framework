Feature: To test the get end point of the application

	Background: Set the base URL
	Given url 'https://reqres.in'
	And print '===== Background Executed ====='
	
	Scenario: To get all the data from application using path
	And path '/api/users?page=2'
	When method get
	Then status 200
  
  Scenario: To get the date in JSON
	Given path '/api/users?page=2'
	And header Accept = 'application/json'
	When method get
	Then status 200
	
	Scenario: To get the data in XML
	Given path '/api/users?page=2'
	And header Accept = 'application/xml'
	When method get
	Then status 200
  