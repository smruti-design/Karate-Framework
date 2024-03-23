Feature: To test the get end point of the application

Scenario: To get all the data from application
Given url 'https://reqres.in/api/users?page=2'
When method get
Then status 200

