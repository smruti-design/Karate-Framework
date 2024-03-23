Feature: To validate the GET endpoint

	Background: Set the base url
		Given url 'https://reqres.in'
		
	Scenario: To get the data in JSON format
	Given path '/api/users?page=2'
	And header Accept = 'application/json'
	When method get
	Then status 200
	And print response
	
	
	Scenario: To get the data in JSON format
	Given path '/api/users?page=2'
	And header Accept = 'application/xml'
	When method get
	Then status 200
	And print response