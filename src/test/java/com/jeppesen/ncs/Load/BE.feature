
  @FDS-19992-0
  Scenario: implementation to send request with linestring
    Given url 'https://ncs-portal-int-wus.azurewebsites.net'
    Given path 'login'
    When method GET
    Then status 200
   

 