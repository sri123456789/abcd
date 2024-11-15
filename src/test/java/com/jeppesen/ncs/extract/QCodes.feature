@Extract @Smoke
Feature: feature collection for  ingesting Elevated curve  on the extract-service

  Background: 
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string newJeppNumber = 'TESTNOTAM' + util.random(10000)

  @FDS-19689
  Scenario: implementation to send an Airspace Reservation and verify status code
    * def original = read('classpath:services/extract/AirspaceReservation.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a CircleByCenterPoint request and verify status code
    * def original = read('classpath:services/extract/CircleCenterPointMix.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept =  'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a CircleByCenterPointSingle request and verify status code
    * def original = read('classpath:services/extract/CircleCenterPointSingle.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a MilitaryOperatingArea request and verify status code
    * def original = read('classpath:services/extract/MilitaryOperatingArea.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a OverFlying request and verify status code
    * def original = read('classpath:services/extract/OverFlying.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a DemolitionOfExplosives request and verify status code
    * def original = read('classpath:services/extract/DemolitionOfExplosives.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a ProhibitedArea request and verify status code
    * def original = read('classpath:services/extract/ProhibitedArea.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  @FDS-19689
  Scenario: implementation to send a RestrictedArea request and verify status code
    * def original = read('classpath:services/extract/RestrictedArea.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a TemporaryRestrictedArea request and verify status code
    * def original = read('classpath:services/extract/TemporaryRestrictedArea.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a GNSS Area-Wide Operations request and verify status code
    * def original = read('classpath:services/extract/GNSS Area-Wide Operations.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a AirDisplays request and verify status code
    * def original = read('classpath:services/extract/AirDisplays.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a Aerobatics request and verify status code
    * def original = read('classpath:services/extract/Aerobatics.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  

  Scenario: implementation to send a Exercises request and verify status code
    * def original = read('classpath:services/extract/Exercises.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a AirRefueling request and verify status code
    * def original = read('classpath:services/extract/AirRefueling.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a BannerTargetTowing request and verify status code
    * def original = read('classpath:services/extract/BannerTargetTowing.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a MissileGunRocketFiring request and verify status code
    * def original = read('classpath:services/extract/MissileGunRocketFiring.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a ModelFlying request and verify status code
    * def original = read('classpath:services/extract/ModelFlying.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a AerialSurvey request and verify status code
    * def original = read('classpath:services/extract/AerialSurvey.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a VolcanicActivity request and verify status code
    * def original = read('classpath:services/extract/VolcanicActivity.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a FormationFlight request and verify status code
    * def original = read('classpath:services/extract/FormationFlight.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a MassMovementofAircraft request and verify status code
    * def original = read('classpath:services/extract/MassMovementofAircraft.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a GliderFlying request and verify status code
    * def original = read('classpath:services/extract/GliderFlying.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a Blasting request and verify status code
    * def original = read('classpath:services/extract/Blasting.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a AscentofFreeBallon request and verify status code
    * def original = read('classpath:services/extract/AscentofFreeBallon.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a BurningBlowingGas request and verify status code
    * def original = read('classpath:services/extract/BurningBlowingGas.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a RadioActiveToxicGas request and verify status code
    * def original = read('classpath:services/extract/RadioActiveToxicGas.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a ParachuteJumpingActivity request and verify status code
    * def original = read('classpath:services/extract/ParachuteJumpingActivity.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a ParachuteJumpingActivity request and verify status code
    * def original = read('classpath:services/extract/Obstacles.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200

  Scenario: implementation to send a Epoch request and verify status code
    * def original = read('classpath:services/extract/Epoch.xml')
    Given url 'https://ncs-ingest-ta-wus.azurewebsites.net/v1/notams?format=XML04'
    And header Accept = 'application/json'
    And header Content-Type = 'application/xml'
    And header X-Client-Id = 'eNotams'
    And request original
    And method POST
    Then status 200
