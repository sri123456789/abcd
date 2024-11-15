
@performance
Feature: Performance testing restrictedAreaNotams API on the load-service



Background: 
	* url Load_Runway
  * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
	* string MaxAlt = util.random(10000)
	* string MinAlt = util.random(10)

	
	
	
	Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RunwayCondition.feature@performance)


	
	And def StartDateTime = '2019-01-03'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	And def EndDateTime = '2020-08-26'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	Given path 'runwayConditions'
	 

	And form field airportId = 'KDEN'
	And form field startDateTime = StartDateTime
	And form field endDateTime = EndDateTime
	
	When method GET
	
	Then status 200
	

	