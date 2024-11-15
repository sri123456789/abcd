@Load
Feature: feature collection for the restrictedAreaNotams API on the load-service

  Background: 

    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  @FDS-19992-0
  Scenario: implementation to send request with linestring
    Given url 'https://ncs-portal-test-wus.azurewebsites.net/login'
   
    And header Accept = 'application/json'
   
    When method GET
    Then status 200

   
   


 