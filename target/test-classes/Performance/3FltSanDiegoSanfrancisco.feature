@performance
Feature: Performance testing restrictedAreaNotams API on the load-service
    
  Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RACalifornia.feature@performance)
    Given url 'https://ncs-load-uat-wus.azurewebsites.net/'
    * def random_string =
      """
      function(s) {
        var text = "";
       var possible = "A1B2C3D4F5F6H7I8J9K0";
        for (var i = 0; i < s; i++)
        text += possible.charAt(Math.floor(Math.random() * possible.length));
        return text;
       }
      """
     * def Flightkey = 'KSAN-KSFO Volume-' +random_string(15)
    Given path 'notam/v1/search/saved/flight'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param disposition = 'JSON'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    
    
    And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY'
    
   And request {"flight_key": "#(Flightkey)","destinations": [],"destination_groups": [],"etd": "2024-11-27T00:35:00Z","eta": "2024-11-28T22:11:00Z","pod": {"icao": "KSAN", "iata": "SAN", "longitude": -117.20077514648436, "latitude": 32.730396851770394},"poa": {"icao": "KSFO","iata": "SFO","longitude": -122.38666534423827,"latitude": 37.61667900634856},"alternates": [{"alternate_type": "Arrival Alternate","airport": {"icao": "KNUQ","iata": "NUQ","longitude": -122.0478057861328,"latitude": 37.41189149367013}},{"alternate_type": "Enroute Alternate","airport": {"icao": "KSMO","iata": "SMO", "longitude": -122.0478057861328,"latitude": 37.41189149367013}}], "checkpoints": [{ "name": "EGOB","latitude": 33.7609,"longitude": -118.2019,"flight_level": "263"},{"name": "KARB","latitude": 34.0174,"longitude": -118.4488, "flight_level": "292"},{"name": "TORU","latitude": 34.4884,"longitude": -118.9819,"flight_level": "338"},{"name": "TOC","latitude": 35.5412,"longitude": -120.1025,"flight_level": "350"},{"name": "BIKS","latitude": 36.4213,"longitude": -121.0583,"flight_level": "350"},{"name": "KAE","latitude": 37.2041,"longitude": -121.9043,"flight_level": "350"}]}
    
    And method POST
    Then status 200