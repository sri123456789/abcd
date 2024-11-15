@performance
Feature: Performance testing restrictedAreaNotams API on the load-service

  Background: 
    * url load_service
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  Scenario: Performance testing to send request with 20 co-ordinates for an area and verify status code.Change the classpath in the Peformance simulation to countryperf(classpath:Performance/RACalifornia.feature@performance)
    Given path 'restrictedAreaNotams'
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    And request {"geometry": {"type": "GeometryCollection","geometries": [{"type": "Polygon","coordinates": [[[-124.18945312500001,42.09822241118974],[-124.365234375,40.38002840251183],[-122.87109375,37.78808138412046],[-120.14648437499999,34.59704151614417],[-117.24609374999999,32.54681317351514],[-114.78515624999999,33.137551192346145],[-114.345703125,34.813803317113155],[-119.794921875,39.16414104768742],[-119.88281249999999,42.09822241118974],[-124.18945312500001,42.09822241118974]]]}]},"qcode":"RT","minAltitude": 9,"maxAltitude": 2000,"startDateTime": "2019-01-20T15:00:00Z","endDateTime": "2029-09-19T15:00:00Z"}
    And method POST
    Then status 200
