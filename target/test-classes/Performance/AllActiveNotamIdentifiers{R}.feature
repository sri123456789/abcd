
# @Smoke
#Feature: feature collection for the restrictedAreaNotams API on the load-service

#Background: 
#	* url Load_Previousversion

#@basic
#Scenario: naive implementation to send request and verify status code
#	Given path 'allActiveNotamIdentifiers'
#	And header Accept = 'application/json'
#	And header Content-Type = 'application/json'
	    
#  And param timestamp = '2019-05-29T12:00:00Z'
	    
#	When method GET
	
#	Then status 200

#Scenario: verify active notam identifiers from NCS are of the right format
#	Given path 'allActiveNotamIdentifiers'
#	And header Accept = 'application/json'
#	And header Content-Type = 'application/json'
	    
#	And param timestamp = '2019-05-29T12:00:00Z' 
	
#	When method GET
	
#	Then status 200
#	And match response == '#[_ > 0]'

