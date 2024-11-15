
@performance
Feature: Performance testing restrictedAreaNotams API on the load-service



Background: 
	* url load_service
  * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
	* string MaxAlt = util.random(10000)
	* string MinAlt = util.random(10)

	
	
	
	Scenario: Performance testing to send request with 20 co-ordinates for an state and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/StatePerformance.feature@performance)

	Given path 'restrictedAreaNotams'
	And header Accept = 'application/json'
	
	And def StartDateTime = '2018-01-03'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	And def EndDateTime = '2019-08-26'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	And def coordinate_geometry = 
	"""
	{
    "type": "GeometryCollection",
    "geometries": [
	      {
           "type": "Point",
           "coordinates": [-123.4423828125,41.902277040963696]
        },
        {
           "type": "LineString",
           "coordinates": [
              
          [-123.3984375,41.96765920367816],
          [-118.30078125,34.63320791137959],
          [-118.0810546875,33.87041555094183]
        ]
        },
       
        {
           "type": "Point",
           "coordinates": [-118.125,33.76088200086917]
        }
  ]
  }
  """
  And form field geometry = coordinate_geometry
	And form field startDateTime = StartDateTime
	And form field endDateTime = EndDateTime
	And form field minAltitude = MinAlt
	And form field maxAltitude = MaxAlt   
	
	When method GET
	
	Then status 200
	
	
	