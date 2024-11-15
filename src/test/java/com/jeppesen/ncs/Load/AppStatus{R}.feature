 @Smoke
Feature: feature collection for the restrictedAreaNotams API on the load-service

  Background: 
    * url load_service_appstatus
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')

  @FDS-19446,FDS-19451
  Scenario: naive implementation to send request and verify status code
    When method GET
    Then status 200
    And match response contains
      """
      {"Extract": "false",
       "Transform": "false",
       "Load": "false"
      }

      """
