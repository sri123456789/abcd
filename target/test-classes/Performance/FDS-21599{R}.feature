@Load 
Feature: feature collection for the restrictedAreaNotams API on the load-service

Background: 
  * url Load_Previousversion
  * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
	* string MaxAlt = util.random(10000)
	* string MinAlt = util.random(10)


	
	
		@FDS-21599-1
	Scenario: implementation to send requestwith previous version

	Given path 'restrictedAreaNotams'
	And header Accept = 'application/json'
	And def coordinate_geometry = 
	"""
	 {
        "type": "Polygon",
        "coordinates": [
			 
	          [
              4.776649475097656,
              48.24228148540879
            ],
            [
              5.134391784667969,
              48.24228148540879
            ],
            [
              5.134391784667969,
              48.398664832741375
            ],
            [
              4.776649475097656,
              48.398664832741375
            ],
            [
              4.776649475097656,
              48.24228148540879
            ]
            
        ]
      }
  """
  And form field geopolygon = coordinate_geometry
	And form field startDateTime = '2017-01-20T15:00:00Z'
	And form field endDateTime = '2020-09-19T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 9999 
	
	

	
	When method GET
	
	Then status 200
	
	@FDS-21599-2
	Scenario: implementation to send requestwith previous version

	Given path 'restrictedAreaNotams'
	And header Accept = 'application/json'
	And def coordinate_geometry = 
	"""
	 {
        "type": "Polygon",
        "coordinates": [
			 
	         [
              4.9484825134277335,
              48.273825016632706
            ],
            [
              4.951229095458984,
              48.273825016632706
            ],
            [
              4.951229095458984,
              48.36537369040198
            ],
            [
              4.9484825134277335,
              48.36537369040198
            ],
            [
              4.9484825134277335,
              48.273825016632706
            ]
        ]
      }
  """
  And form field geopolygon = coordinate_geometry
	And form field startDateTime = '2017-01-20T15:00:00Z'
	And form field endDateTime = '2020-09-19T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 9999 
	
	

	
	When method GET
	
	Then status 200
	
	
	
	