 @Smoke
Feature: feature collection for the restrictedAreaNotams API on the load-service

Background: 
	* url load_service

	* def coordinate_geometry = 
	"""
	{
   "type": "GeometryCollection",
   "geometries": [
	{
    "type": "Polygon",
    "coordinates": [
      [
        [
          -119.60540771484376,
          33.168594074833095
        ],
        [
          -119.40628051757812,
          33.168594074833095
        ],
        [
          -119.40628051757812,
          33.35110194956375
        ],
        [
          -119.60540771484376,
          33.35110194956375
        ],
        [
          -119.60540771484376,
          33.168594074833095
        ]
      ]
    ]
  }
  ]
  }
  """
	* def defaultStartDateTime = '2019-02-20T15:00:00Z'
	* def defaultEndDateTime = '2019-06-19T15:00:00Z'
	* def defaultMinAltitude = 0
	* def defaultMaxAltitude = 5000 
	  

	Scenario: Bad geopolygon format
		Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
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
          -119.60540771484376,
          33.168594074833095
        ],
        [
          -119.40628051757812,
          33.168594074833095
        ],
        [
          -119.40628051757812,
          33.35110194956375
        ],
        [
          -119.60540771484376,
          33.35110194956375
        ],
        [
          -119.60540771484376,
          
        ]
      ]
    ]
  }
  ]
  }
  """
		And form field geometry = coordinate_geometry
		And form field startDateTime = defaultStartDateTime
		And form field endDateTime = defaultEndDateTime
		And form field minAltitude = defaultMinAltitude
		And form field maxAltitude = defaultMaxAltitude   
		
		When method GET
		Then status 400
		And match response contains 'Bad geometry:'
		
		* print 'response======================', response


	Scenario: Bad start date time format
		Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
		And form field geometry = coordinate_geometry
		# Bad start date time format
		And form field startDateTime = '19-02-20T15:00:00Z'
		And form field endDateTime = defaultEndDateTime
		And form field minAltitude = defaultMinAltitude
		And form field maxAltitude = defaultMaxAltitude   
		
		When method GET
		Then status 400
		And match response contains 'Bad startDateTime:'
		
		* print 'response======================', response

	Scenario: Bad end date time format
		Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
		And form field geometry = coordinate_geometry
		And form field startDateTime = defaultStartDateTime
		# Bad end date time format
		And form field endDateTime = '19-02-20T15:00:00Z'
		And form field minAltitude = defaultMinAltitude
		And form field maxAltitude = defaultMaxAltitude   
		
		When method GET
		Then status 400
		And match response contains 'Bad endDateTime:'
		
		* print 'response======================', response
		