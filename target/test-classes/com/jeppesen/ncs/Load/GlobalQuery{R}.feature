@Smoke
Feature: feature collection for the restrictedAreaNotams API on the load-service

  Background: 
    
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  @FDS-16712 @FDS-17738
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
                   -372.30468749999994,
                   27.68352808378776
                 ],
                 [
                   -371.77734374999994,
                   -31.802892586706747
                 ],
                 [
                   -204.609375,
                   -33.137551192346145
                 ],
                 [
                   -268.06640625,
                   71.30079291637452
                 ],
                 [
                   -372.30468749999994,
                   27.68352808378776
                 ]
           ]
         ]
       }
      ]
      }
      """
    And form field geometry = coordinate_geometry
    And form field startDateTime = '2018-02-20T15:00:00Z'
    And form field endDateTime = '2019-09-19T15:00:00Z'
    And form field minAltitude = 0
    And form field maxAltitude = 999
    When method GET
    Then status 200
