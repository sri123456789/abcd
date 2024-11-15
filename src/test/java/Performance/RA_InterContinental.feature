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
    And request {"geometry": {"type": "GeometryCollection","geometries": [{"type": "LineString","coordinates": [[-104.974365234375,39.73253798438173],[8.701171874999998,50.12057809796008],[77.58544921874999,12.983147716796578],[144.9755859375,-37.822802433527556]]}]}}
    And method POST
    Then status 200
