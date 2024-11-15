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
     * def Flightkey = 'MIA-KJFK Volume-' +random_string(15)
    Given path 'notam/v1/search/saved/flight'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param disposition = 'JSON'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    
    
     And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY''
    
   And request {"flight_key": "#(Flightkey)","active": "true", "destinations": [],"destination_groups": [],"etd": "2024-08-05T00:35:00Z","eta": "2024-08-10T22:11:00Z","pod": { "iata": "MIA","icao": "KMIA","longitude": -80.28654098510741,"latitude": 25.798616136889517},"poa": {"iata": "JFK","icao": "KJFK","longitude": -73.77971649169922,"latitude": 40.6513410441644},"alternates": [{"alternate_type": "Departure Alternate", "airport": {"iata": "TMB","icao": "KTMB", "longitude": -80.4283332824707,"latitude": 25.648025948697388}},{ "alternate_type": "Enroute Alternate","airport": { "iata": "ATL", "icao": "KATL","longitude": -84.4295883178711,"latitude": 33.63577420745804}},{"alternate_type": "Arrival Alternate","airport": {"iata": "LGA","icao": "KLGA","longitude": -73.87009620666504,"latitude": 40.77358687568842}}],"checkpoints": [{"name": "TAGMO","longitude": -81.9140625,"latitude": 29.305561325527698,"flight_level": "19700","time":"2023-11-02T17:22:00Z"},{"name": "GRN", "longitude": -83.408203125, "latitude": 32.76880048488168,"flight_level": "19300","time":"2023-11-02T18:22:00Z"},{"name": "SQN","longitude": -82.001953125,"latitude": 35.53222622770337,"flight_level": "31000","time":"2023-11-02T19:22:00Z"},{"name": "TOD","longitude": -79.541015625,"latitude": 37.579412513438385, "flight_level": "31000","time":"2023-11-02T20:22:00Z"},{"name": "TOVES", "longitude": -77.87109375,"latitude": 39.36827914916014,"flight_level": "31000","time":"2023-11-02T21:22:00Z"},{"name": "ENS","longitude": -76.11328125,"latitude": 40.58058466412761, "flight_level": "31000","time":"2023-12-03T22:22:00Z"},{"name": "COMO","longitude": -74.86083984375,"latitude": 40.730608477796636,"flight_level": "31000","time":"2023-11-04T23:22:00Z"}] }
   
   
    And method POST
    Then status 200
    
    
    