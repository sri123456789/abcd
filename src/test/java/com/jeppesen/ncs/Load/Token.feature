@Load @Smoke
Feature: feature collection for the RunWay Conditions API on the load-service

  @FDS-167121 @FDS-177381
  Scenario:  implementation to send request and verify status code
    Given url  'https://ncs-portal-int-wus.azurewebsites.net'
    Given path 'login'
   
     When method POST
    Then status 200
    * def csrf = response.json._csrf


  @FDS-167121 @FDS-177381
  Scenario:  implementation to send request and verify status code
    Given url  'https://ncs-load-ta-wus.azurewebsites.net/v1'
    Given path 'runwayConditions'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
 
    And form field airportId = 'LFRH'
    And form field startDateTime = '2019-02-20T15:00:00Z'
    And form field endDateTime = '2020-09-19T15:00:00Z'
    And form field runwayIds = 14
    And form field runwayConditions = 'caution'
    When method GET
    Then status 200
   

  @FDS-167121 @FDS-177381
  Scenario:  implementation to send request and verify status code
    Given url  'https://ncs-load-ta-wus.azurewebsites.net/v1'
    Given path 'runwayConditions'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
 
    And form field airportId = 'KMCF'
    And form field startDateTime = '2019-02-20T15:00:00Z'
    And form field endDateTime = '2020-09-19T15:00:00Z'
    And form field runwayIds = 8
    And form field runwayConditions = 'limited'
    When method GET
    Then status 200
    
    
    @FDS-167121 @FDS-177381
  Scenario:  implementation to send request and verify status code
    Given url  'https://ncs-load-ta-wus.azurewebsites.net/v1'
    Given path 'runwayConditions'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
 
    And form field airportId = 'KMCF'
    And form field startDateTime = '2023-02-20T15:00:00Z'
    And form field endDateTime = '2023-09-19T15:00:00Z'
    And form field runwayIds = 8
    And form field runwayConditions = 'closed'
    When method GET
    Then status 200
  
