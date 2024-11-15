
@performance
Feature: Performance testing restrictedAreaNotams API on the load-service



Background: 
	* url load_service
  * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
	* string MaxAlt = util.random(10000)
	* string MinAlt = util.random(10)

	
	
	
	Scenario: Performance testing to send request with 20 co-ordinates for country and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/CountryPerformance.feature@performance)

	Given path 'restrictedAreaNotams'
	
	And def StartDateTime = '2018-01-03'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	And def EndDateTime = '2020-08-26'+'T15'+':'+'1'+util.random(9)+':'+'1'+util.random(9)+'Z'
	And def coordinate_geometry = 
	"""
	{
    "type": "GeometryCollection",
    "geometries": [
	{
    "type": "Polygon",
    "coordinates": [
      [
         [
              -73.94901752471924,
              40.821961195604516
            ],
            [
              -73.94893169403076,
              40.821961195604516
            ],
            [
              -73.94893169403076,
              40.83157338099184
            ],
            [
              -73.94901752471924,
              40.83157338099184
            ],
            [
              -73.94901752471924,
              40.821961195604516
            ]

      ]
    ]
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
	