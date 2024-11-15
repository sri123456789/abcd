 @Smoke
Feature: feature collection for the restrictedAreaNotams API on the load-service

  Background: 
    * url load_service_health
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')

  @FDS-19451 @FDS-17738
  Scenario: naive implementation to send request and verify status code
    When method GET
    Then status 200
    
    And match response contains
      """
      {"Status":pass,"Release Version":1.3.1,"Build Number":'#notnull',"Build Checksum":'#notnull'}

      """
      
