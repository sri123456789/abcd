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
    And request {"geometry": {"type": "GeometryCollection","geometries": [{"type": "Polygon","coordinates": [[[127.22305297851562,36.72237463863996],[127.07199096679686,36.62103883480288],[127.22442626953124,36.53722603815998],[127.37274169921875,36.61552763134925],[127.22305297851562,36.72237463863996]]]},{"type": "LineString","coordinates": [[127.2216796875,36.535019209789],[127.21755981445312,36.45774055105829]]},{"type":"LineString","coordinates":[[127.22030639648438,36.804886560237236],[127.22442626953124,36.71907231552909]]}]}}
    And method POST
    Then status 200
