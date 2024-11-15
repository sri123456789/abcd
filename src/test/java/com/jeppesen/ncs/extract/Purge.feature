@Extract @Smoke
Feature: feature collection for  ingesting  on the extract-service

  Background: 
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string newJeppNumber = 'TESTNOTAM' + util.random(10000)

  @FDS-20590
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/Purge_exactly90days.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-20590
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/Purge_Greater than 90 days.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-20590
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/Purge_Lessthan90days.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200
