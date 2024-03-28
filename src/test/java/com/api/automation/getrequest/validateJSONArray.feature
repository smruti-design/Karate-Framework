Feature: To validate the GET endpoint

	Background: Set the base url
		Given url 'https://reqres.in'
		
	Scenario: To get the data in JSON format
	Given path '/api/users?page=2'
	And header Accept = '*/*'
	When method get
	Then status 200
	And match response.data.[0].name == "cerulean"
	#validate the size of array
	And match response.data == '#[6]'
	#validate using wild char
	And match response.data[*].year == [2000,2001,2002,2003,2004,2005]
	#contains keyword
	And match response.data[*].name contains ["cerulean"]
	