@performance
Feature: Performance testing restrictedAreaNotams API on the load-service

  Background: 
    * url Load_Search
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RACalifornia.feature@performance)
    Given path 'search/ad-hoc/flight/run'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And param disposition = 'JSON'
    And param format = 'ICAO,SIMPLE,JSON,JSON_GEOMETRY'
    And request {"flight_key": "SAVE 87 KORD","destinations": [],"destination_groups": [],"etd": "2023-11-03T20:35:00Z","eta": "2023-11-30T22:11:00Z","pod": {"icao": "RKSI","iata": "ICN","longitude": 126.42765998840332,"latitude": 37.47506243564607},"poa": {"icao": "PANC","iata": "ANC","longitude": -149.98981475830078,"latitude": 61.18425950392498},"alternates": [{"alternate_type": "Arrival Alternate","airport": {"icao": "PAED","iata": "EDF","longitude": -149.81231689453125,"latitude": 61.2633008455122}},{"alternate_type": "Enroute Alternate","airport": {"icao": "PAEN","iata": "ENA","longitude": -151.24538898468018,"latitude": 60.571852453207356}}],"checkpoints": [{"name": "EGOBA","latitude": 37.48667,"longitude": 127.38,"flight_level": "263"},{"name": "KARBU","latitude": 37.53333,"longitude": 127.665,"flight_level": "292"},{"name": "TORUS","latitude": 37.60667,"longitude": 128.135,"flight_level": "338"},{"name": "TOC","latitude": 37.63,"longitude": 128.26,"flight_level": "350"},{"name": "BIKSI","latitude": 37.675,"longitude": 128.585,"flight_level": "350"},{"name": "KAE","latitude": 37.7,"longitude": 128.7533,"flight_level": "350"},{	"name": "PILIT","latitude": 37.44167,"longitude": 129.2917,"flight_level": "350"},{"name": "NIMUS","latitude": 37.20333,"longitude": 129.7817,"flight_level": "350"},{"name": "AGSUS","latitude": 36.75667,"longitude": 130.6783,"flight_level": "350"},{"name": "LANAT","latitude": 36.37333,"longitude": 131.4283,"flight_level": "350"},{"name": "DISSH","latitude": 36.28167,"longitude": 133.7617,"flight_level": "350"},{"name": "SAMON","latitude": 36.24333,"longitude": 134.5033,"flight_level": "350"},{"name": "KMC","latitude": 36.39667,"longitude": 136.405,"flight_level": "350"},{"name": "DAIGO","latitude": 36.745,"longitude": 140.35,"flight_level": "350"},{	"name": "MAMID","latitude": 37.555,"longitude": 142.7167,"flight_level": "350"},{"name": "OATIS","latitude": 37.81667,"longitude": 143.54,"flight_level": "350"},{"name": "PUTER","latitude": 38.33167,"longitude": 145.5183,"flight_level": "350"},{"name": "POXED","latitude": 41.085,"longitude": 148.9417,"flight_level": "350"},{"name": "PUGAL","latitude": 44.85833,"longitude": 154.4167,"flight_level": "350"},{"name": "PASRO","latitude": 48.285,"longitude": 160.675,"flight_level": "350"},{"name": "POWAL","latitude": 50.405,"longitude": 165.5133,"flight_level": "370"},{"name": "FIR","latitude": 52.075,"longitude": 170,"flight_level": "370"},{"name": "PLADO","latitude": 52.255,"longitude": 170.5333,"flight_level": "370"},{			"name": "PINSO","latitude": 53.46833,"longitude": 173.3783,"flight_level": "370"},{"name": "POOFF","latitude": 55.29833,"longitude": 178.6183,"flight_level": "370"},{"name": "PINTT","latitude": 56.71667,"longitude": -176.3067,"flight_level": "370"},{"name": "PTZGR","latitude": 57.33333,"longitude": -173.6833,"flight_level": "370"},{"name": "PUGGY","latitude": 57.95167,"longitude": -170.7617,"flight_level": "370"},{"name": "POETT","latitude": 58.71,"longitude": -166.9967,"flight_level": "390"},{"name": "SELDM",	"latitude": 58.89667,"longitude": -165.9533,"flight_level": "390"},{"name": "PORGE","latitude": 59.38333,"longitude": -163,"flight_level": "390"},{"name": "HAMND","latitude": 60.49833,"longitude": -154.6767,"flight_level": "390"},{"name": "TOD","latitude": 60.62,"longitude": -153.76,"flight_level": "390"},{"name": "BTWEN","latitude": 60.74,"longitude": -152.7667,"flight_level": "310"},{"name": "CKING","latitude": 60.81167,"longitude": -152.16,"flight_level": "258"},{"name": "SNAAG","latitude": 60.89833,"longitude": -151.3633,"flight_level": "189"},{"name": "NEELL","latitude": 60.96667,"longitude": -151.0617,"flight_level": "161"},{"name": "SHNKN","latitude": 61.14667,"longitude": -150.7217,"flight_level": "124"},{"name": "AINKK","latitude": 61.16833,"longitude": -151.5217,"flight_level": "110"},{"name": "PANC","latitude": 61.17333,"longitude": -149.9983,"flight_level": "2"}]}
    
    And method POST
    Then status 200