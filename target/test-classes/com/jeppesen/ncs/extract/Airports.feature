@Extract @Smoke
Feature: feature collection for  ingesting Elevated curve  on the extract-service

  Background: 
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string newJeppNumber = 'TESTNOTAM' + util.random(10000)

  @FDS-19689
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/RunwayClosed.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/RunwayLimitation.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/RunwayCaution.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200
