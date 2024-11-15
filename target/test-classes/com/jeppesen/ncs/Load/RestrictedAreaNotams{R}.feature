 @Smoke
Feature: feature collection for the restrictedAreaNotams API on the load-service

Background: 
	

@california
Scenario: naive implementation to send request and verify status code 
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
          33.168594074833095
        ]
      ]
    ]
  }
  ]
  }
  """
	And form field geometry = coordinate_geometry
	And form field startDateTime = '2019-02-20T15:00:00Z'
	And form field endDateTime = '2019-06-19T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 5000   
	
	When method GET
	
	Then status 200

Scenario: send a request with a square geopolygon around the continental United States 
	Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
	
	And def coordinate_geometry = 
	"""
	{
    "type": "GeometryCollection",
    "geometries": [
	      {
           "type": "Point",
           "coordinates": [-95.2734375,
          37.43997405227057]
        }
       
        {
           "type": "Point",
           "coordinates": [-72.421875,
          40.97989806962013]
        }
        {
           "type": "Point",
           "coordinates": [-84.375,
          32.54681317351514]
        }
        {
           "type": "Point",
           "coordinates": [-116.71874999999999,
          33.7243396617476]
        }
        {
           "type": "Point",
           "coordinates": [-121.28906250000001,
          44.59046718130883]
        }
        {
           "type": "Point",
           "coordinates": [-105.1171875,
          45.82879925192134]
        }
         {
           "type": "Point",
           "coordinates": [-98.7890625,
          27.68352808378776]
        }

      ]
  }
  ]
  }
  """
	And form field geometry = coordinate_geometry
	And form field startDateTime = '2020-08-31T15:00:00Z'
	And form field endDateTime = '2021-02-20T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 9999
	And form field qcode = 'RT'
	   
	
	When method GET
	
	Then status 200
	
	
	
Scenario: send a request with a geopolygon that has a size greater than 2KB.
	It is expected that that this will return 414 until changes are made to allow a 
	request of size greater than the default.
	 
	Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
	
	And def coordinate_geometry = read('classpath:services/load/california-geometry.json')
	And form field geometry = coordinate_geometry
	And form field startDateTime = '2019-02-18T15:00:00Z'
	And form field endDateTime = '2019-02-20T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 390    
	
	When method GET
	Then status 414
	
	Scenario: send a request with a square geopolygon around the continental United States 
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
                                -77.03638889,
                                39.3599057350447
                            ],
                            [
                                -77.0925719052326,
                                39.3579879452058
                            ],
                            [
                                -77.1483182301636,
                                39.3522494806382
                            ],
                            [
                                -77.203194783528,
                                39.3427349329771
                            ],
                            [
                                -77.2567756653619,
                                39.3295182121672
                            ],
                            [
                                -77.3086456563305,
                                39.3127019366849
                            ],
                            [
                                -77.3584036091512,
                                39.2924165885597
                            ],
                            [
                                -77.4056656988844,
                                39.2688194417113
                            ],
                            [
                                -77.4500685012368,
                                39.2420932744491
                            ],
                            [
                                -77.4912718702998,
                                39.2124448785337
                            ],
                            [
                                -77.5289615910503,
                                39.1801033799534
                            ],
                            [
                                -77.5628517842296,
                                39.1453183870015
                            ],
                            [
                                -77.5926870456052,
                                39.1083579835313
                            ],
                            [
                                -77.6182443048476,
                                39.0695065859103
                            ],
                            [
                                -77.6393343930513,
                                39.0290626831904
                            ],
                            [
                                -77.6558033115418,
                                38.9873364805999
                            ],
                            [
                                -77.6675331980985,
                                38.9446474668354
                            ],
                            [
                                -77.6744429900435,
                                38.9013219257689
                            ],
                            [
                                -77.6764887867044,
                                38.8576904131055
                            ],
                            [
                                -77.673663916561,
                                38.8140852182622
                            ],
                            [
                                -77.6659987168604,
                                38.7708378312819
                            ],
                            [
                                -77.6535600356567,
                                38.7282764340038
                            ],
                            [
                                -77.6364504680606,
                                38.6867234339726
                            ],
                            [
                                -77.6148073399966,
                                38.6464930587283
                            ],
                            [
                                -77.5888014539749,
                                38.6078890271878
                            ],
                            [
                                -77.5586356122904,
                                38.5712023138252
                            ],
                            [
                                -77.5245429337214,
                                38.5367090203091
                            ],
                            [
                                -77.4867849802166,
                                38.5046683681598
                            ],
                            [
                                -77.4456497095309,
                                38.4753208255923
                            ],
                            [
                                -77.4014492751363,
                                38.4488863756978
                            ],
                            [
                                -77.3545176791653,
                                38.4255629455896
                            ],
                            [
                                -77.3052083067159,
                                38.4055249971468
                            ],
                            [
                                -77.2538913556075,
                                38.3889222848986
                            ],
                            [
                                -77.2009511692877,
                                38.3758788002499
                            ],
                            [
                                -77.1467834977891,
                                38.3664918964676
                            ],
                            [
                                -77.0917926981234,
                                38.3608316038654
                            ],
                            [
                                -77.03638889,
                                38.3589401380559
                            ],
                            [
                                -76.9809850818766,
                                38.3608316038654
                            ],
                            [
                                -76.9259942822109,
                                38.3664918964676
                            ],
                            [
                                -76.8718266107122,
                                38.3758788002499
                            ],
                            [
                                -76.8188864243924,
                                38.3889222848986
                            ],
                            [
                                -76.7675694732841,
                                38.4055249971468
                            ],
                            [
                                -76.7182601008346,
                                38.4255629455896
                            ],
                            [
                                -76.6713285048636,
                                38.4488863756978
                            ],
                            [
                                -76.627128070469,
                                38.4753208255923
                            ],
                            [
                                -76.5859927997833,
                                38.5046683681598
                            ],
                            [
                                -76.5482348462785,
                                38.5367090203091
                            ],
                            [
                                -76.5141421677095,
                                38.5712023138252
                            ],
                            [
                                -76.483976326025,
                                38.6078890271877
                            ],
                            [
                                -76.4579704400033,
                                38.6464930587283
                            ],
                            [
                                -76.4363273119394,
                                38.6867234339726
                            ],
                            [
                                -76.4192177443432,
                                38.7282764340038
                            ],
                            [
                                -76.4067790631396,
                                38.7708378312819
                            ],
                            [
                                -76.399113863439,
                                38.8140852182622
                            ],
                            [
                                -76.3962889932955,
                                38.8576904131055
                            ],
                            [
                                -76.3983347899566,
                                38.9013219257689
                            ],
                            [
                                -76.4052445819015,
                                38.9446474668354
                            ],
                            [
                                -76.4169744684582,
                                38.9873364805999
                            ],
                            [
                                -76.4334433869485,
                                39.0290626831904
                            ],
                            [
                                -76.4545334751523,
                                39.0695065859103
                            ],
                            [
                                -76.4800907343947,
                                39.1083579835313
                            ],
                            [
                                -76.5099259957704,
                                39.1453183870015
                            ],
                            [
                                -76.5438161889497,
                                39.1801033799534
                            ],
                            [
                                -76.5815059097002,
                                39.2124448785337
                            ],
                            [
                                -76.6227092787632,
                                39.2420932744491
                            ],
                            [
                                -76.6671120811156,
                                39.2688194417113
                            ],
                            [
                                -76.7143741708487,
                                39.2924165885597
                            ],
                            [
                                -76.7641321236694,
                                39.3127019366849
                            ],
                            [
                                -76.816002114638,
                                39.3295182121672
                            ],
                            [
                                -76.869582996472,
                                39.3427349329771
                            ],
                            [
                                -76.9244595498364,
                                39.3522494806382
                            ],
                            [
                                -76.9802058747674,
                                39.3579879452058
                            ],
                            [
                                -77.03638889,
                                39.3599057350447
                            ]
      ]
    ]
  }
  ]
  }
  """
	And form field geometry = coordinate_geometry
	And form field startDateTime = '2020-08-31T15:00:00Z'
	And form field endDateTime = '2021-02-20T15:00:00Z'
	And form field minAltitude = 0
	And form field maxAltitude = 9999
	And form field qcode = 'RT'
	   
	
	When method GET
	
	Then status 200
