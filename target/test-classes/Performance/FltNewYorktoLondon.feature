@performance
Feature: Performance testing restrictedAreaNotams API on the load-service

  Background: 
    * url Load_Previousversion
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RACalifornia.feature@performance)
    Given path 'search/ad-hoc/flight/run'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And header Non-Human-Id-JWT-TOKEN = 'eyJhbGciOiJFUzI1NiIsImtpZCI6IlFud3ZTajRsVnRjd0gxZ0Z0Z3RFVU1wYlRyT0plWGtRMk5QVDlqYXJCME0iLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiY2VydCI6eyJzZXJ2aWNlSUQiOiJhbGxhcHAiLCJzdWJqZWN0IjoiQ049dGVzdGNsaWVudGNlcnQuZmVkcC5kaWdpdGFsYXZpYXRpb25zZXJ2aWNlcy5jb20sT1U9c2VydmVycyxPPUJvZWluZyxDPVVTIn0sImV4cCI6MTY3NDAyOTkxMSwiaWF0IjoxNjQyNDkzOTExLCJpc3MiOiJQaW5nQWNjZXNzQXV0aFRva2VuIiwianRpIjoiNjUzNDQzYjViMTEwYzc1M2Y4NzY3Mzg4NmRjZGU0ODJmN2NiMWYxMmE0ZjVlN2M0OWM1Yjg2NTFjNmYxOTE1OCIsIm5iZiI6MTY0MjQ5MzkxMSwic3ViIjoiYXV0aCIsImlmcyI6eyJtYWlub3JnYW5pemF0aW9uaWQiOiJleG9zdGFyOmV4b3N0YXJpZDoxMTMzNjA1ODEifX0=.MTadI82XUf6BxdIvrcHGd7G80jaz9HMntL2zV0Hy6-iBMSo_WRQQTHozUocmEKU9MD8qPuXCogsDWLEwaqCKyA'
    And param disposition = 'JSON'
    And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY'
    And request {"flight_key": "AA 87 NY","active": true,"destinations": [],"destination_groups": [],"etd": "2023-10-19T20:35:00Z","eta": "2023-10-20T22:11:00Z","pod": {"iata": "JFK","icao": "KJFK","longitude": -73.77971649169922,"latitude": 40.6513410441644},"poa": {"iata": "LHR","icao": "EGLL","longitude": -0.46640396118164057,"latitude": 51.471813862107005},"alternates": [{"alternate_type": "DEPARTURE_ALTERNATE","airport": {"iata": "LGA","icao": "KLGA","longitude": -73.86795043945312,"latitude": 40.76546147212545}},{"alternate_type": "ENROUTE_ALTERNATE","airport": {"iata": "FCO","icao": "LIRF","longitude": -2.96630859375,"latitude": 51.52241608253253}}],"checkpoints": [{"name": "BOBO","longitude": -73.465576171875,"latitude": 40.73268976628568,"flight_level": "151"},{"name": "MOMO","longitude": -73.12774658203125,"latitude": 40.805493843894155,"flight_level": "19300"},{"name": "SOMO","longitude": -72.2186279296875,"latitude": 40.95293701189724,"flight_level": "31000"},{"name": "FOMO","longitude": -62.75390625,"latitude": 44.87144275016589,"flight_level": "31000"},{"name": "TOMO","longitude": -53.12988281249999,"latitude": 47.517200697839414,"flight_level": "31000"},{"name": "BOMO","longitude": -40.42968749999999,"latitude": 50.064191736659104,"flight_level": "31000"},{"name": "COMO","longitude": -22.148437499999996,"latitude": 49.724479188712984,"flight_level": "31000"},{"name": "COMO","longitude": -11.42578125,"latitude": 50.62507306341435,"flight_level": "31000"},{"name": "DOMO","longitude": -6.767578125,"latitude": 51.645294049305406,"flight_level": "31000"},{"name": "EOMO","longitude": -4.779052734375,          "latitude": 51.59754765771458,"flight_level": "33000"},{"name": "GOMO","longitude": -3.71337890625,"latitude": 51.52241608253253,"flight_level": "33000"},{"name": "HOMO","longitude": -2.373046875,"latitude": 51.52241608253253,"flight_level": "33000"},{"name": "GOMO","longitude": -1.505126953125,"latitude": 51.515579783755925,"flight_level": "33000"}]}
    And method POST
    Then status 200
