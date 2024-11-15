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
     * def Flightkey = 'KDEN-OHARE Volume-' +random_string(15)
    Given path 'notam/v1/search/saved/flight'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param disposition = 'JSON'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    
    And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY'
    
   And request  {"flight_key":"#(Flightkey)","active":" true","destinations": [],"destination_groups": [],"eta": "2024-08-12T22:11:00Z","etd": "2024-08-04T20:35:00Z","poa": {"iata": "DEN","icao": "KDEN","latitude": 39.8466,"longitude": -104.6562},"pod": {"iata": "ORD","icao": "KORD","latitude": 41.978611,"longitude": -87.904724},"alternates": [{"airport": {"iata": "FEP","icao": "KFEP","latitude": 42.280834,"longitude": -89.587778}, "alternate_type": "Departure Alternate" },{"airport": {"iata": "DFW","icao": "KDFW","latitude": 32.8969445,"longitude": -97.038056},"alternate_type": "Enroute Alternate"}],"checkpoints": [{"name": "LARRN","latitude": 32.7,"longitude": -97.05,"flight_level": "080"},{"name": "GIGEM","latitude": 32.6834,"longitude": -97.1334,"flight_level": "152"},{"name": "TANNO","latitude": 32.6834,"longitude": -97.25,"flight_level": "204"},{"name": "PODDE","latitude": 32.7167,"longitude": -97.7334,"flight_level": "286"},{"name":"MQP","latitude": 32.7167,"longitude": -97.98334,"flight_level": "298"},{"name": "TOC","latitude": 32.9667,"longitude": -97.95,"flight_level": "302"},{"name": "BATIK","latitude": 33.4334,"longitude": -97.8834,"flight_level": "328"},{"name": "SPS","latitude": 33.9834,"longitude": -98.5834,"flight_level": "400"},{"name": "LAA","latitude": 38.1834,"longitude": -102.6834,"flight_level": "400"},{"name": "HYMNS","latitude": 38.5334,"longitude": -103.2,"flight_level": "400"},{"name": "HGO","latitude": 38.8167,"longitude": -103.6167,"flight_level": "390"},{"name": "TOD","latitude": 38.9667,"longitude": -103.7834,"flight_level": "320"},{"name": "CONAL","latitude": 39.1167,"longitude": -103.9667,"flight_level": "280"},{"name": "QUAIL","latitude": 39.25,"longitude": -104.1167,"flight_level": "210"},{"name": "JEFEL","latitude": 39.35,"longitude": -104.2334,"flight_level": "064"},{"name": "CELMI","latitude": 39.6,"longitude": -104.5167,"flight_level": "035"},{"name": "FQF","latitude": 39.6834,"longitude": -104.6167,"flight_level": "035"},{"name": "KDEN","latitude": 39.85,"longitude": -104.6667,"flight_level": "001"}]} }
    And method POST
    Then status 200
    
    
    