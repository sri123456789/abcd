@performance
Feature: Performance testing restrictedAreaNotams API on the load-service



 
    
  Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RACalifornia.feature@performance)
    Given url 'https://ncs-load-uat-wus.azurewebsites.net/'
    * def random_string =
      """
      function(s) {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
        for (var i = 0; i < s; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));
        return text;
       }
      """
     * def Flightkey = 'MMSD-MMTJ Volume-' +random_string(15)
    Given path 'notam/v1/search/saved/flight'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param disposition = 'JSON'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    
    
    And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY'
    
   And request { "flight_key": "#(Flightkey)","active":" true",     "destinations": [],     "destination_groups": [],     "etd": "2024-08-02T00:35:00Z",     "eta": "2024-08-10T22:11:00Z",     "pod": {         "iata": "SJD",         "icao": "MMSD",         "longitude": -109.71736907958984,         "latitude": 23.14919931569687     },     "poa": {         "iata": "TIJ",         "icao": "MMTJ",                 "longitude": -116.97873115539551,         "latitude": 32.54167609384677     },        "checkpoints": [         {             "name": "SD500",             "longitude": -109.71,             "latitude": 23.055 ,             "flight_level": "031", 			"time":"2023-11-03T05:22:00Z"         },         {             "name": "SD504",             "longitude": -109.90166667 , 	    "latitude": 23.125 ,             "flight_level": "094", 			"time":"2023-11-03T06:22:00Z"         },         {             "name": "TAMET",             "longitude": -110.175, 	    "latitude": 23.53833333 ,             "flight_level": "175", 			"time":"2023-11-03T07:22:00Z"         },         {             "name": "ANEGO",             "longitude": -110.565, 	    "latitude": 23.89666667 ,             "flight_level": "261", 			"time":"2023-11-04T08:22:00Z"         },         {             "name": "TOC",             "longitude": -111.32, 	    "latitude": 24.71 ,             "flight_level": "360", 			"time":"2023-11-05T09:22:00Z"         },                {             "name": "TAGMO",             "longitude": -111.88833333, 	    "latitude": 25.30166667,             "flight_level": "360", 			"time":"2023-11-05T10:22:00Z"         },         {             "name": "GRN",             "longitude": -114.02166667, 	    "latitude": 28.02666667,             "flight_level": "360", 			"time":"2023-11-05T11:22:00Z"         },          {             "name": "SQN",             "longitude": -115.955, 	    "latitude": 30.545,             "flight_level": "360", 			"time":"2023-11-05T12:22:00Z"         },   {             "name": "TOD",             "longitude":-116.18 , 	    "latitude":30.97 ,             "flight_level": "360", 			"time":"2023-11-06T13:22:00Z"         }, {             "name": "TOVES",             "longitude": -116.43, 	    "latitude": 31.46,             "flight_level": "236", 			"time":"2023-11-06T14:22:00Z"         }, {             "name": "ENS",             "longitude": -116.60666667, 	    "latitude": 31.79666667,             "flight_level": "166", 			"time":"2023-11-06T15:22:00Z"         }, {             "name": "KREPE",             "longitude": -116.735, 	    "latitude": 32.075,             "flight_level": "108", 			"time":"2023-11-07T16:22:00Z"         }, {             "name": "MMTJ",             "longitude": -116.97, 	    "latitude": 32.54166667,             "flight_level": "005", 			"time":"2023-11-07T17:22:00Z"         }      ] }
    
    And method POST
    Then status 200
    
    
    