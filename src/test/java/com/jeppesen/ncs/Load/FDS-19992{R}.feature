@Load
Feature: feature collection for the restrictedAreaNotams API on the load-service

  Background: 
    * def util = callonce read('classpath:com/jeppesen/ncs/common/Utility.feature')
    * string MaxAlt = util.random(10000)
    * string MinAlt = util.random(10)

  @FDS-19933-1
  Scenario: implementation to send a request with lines,point and polygons that is eactly 4meters away from NOTAM area(without Buffer parameter)
    Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
    And header Accept = 'application/json'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    And def coordinate_geometry =
      """
      
      {
         "type": "GeometryCollection",
         "geometries": [
                
              
              {
                  "type": "LineString",
                  "coordinates": [
                  
                [-104.67312633991241,39.862059872211816],
                [-104.67313706874847,39.86178810530619]
              ]
             },
            
             {
                  "type": "LineString",
                  "coordinates": [
                  
               [-104.67312902212143,39.86167692762547],
               [-104.67313706874847,39.86178398761751]
             ]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67313975095747,39.86178810530619]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67312902212143,39.862053695703196]
             },       
              
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.6731236577034,39.86167280993012],
                 [-104.67306733131409,39.86153486699351],
                 [-104.6729439496994,39.861584279420576],
                 [-104.6731236577034,39.86167280993012]
                 
               ]
              ]  
             },
          
            {
                "type": "Point",
                "coordinates":  [-104.6729439496994,39.86157810286916]
            },
            {
                "type": "Point",
                "coordinates":  [-104.67306464910507,39.86153486699351]
            },   
          
            {
               "type": "LineString",
               "coordinates": [
                [-104.6730700135231,39.86153692584535],
                [-104.6730700135231,39.86141339462567]
             ]  
             },
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.67306464910507,39.861417512336594],
                 [-104.67315047979355,39.86138045292954],
                 [-104.67308074235915,39.86133104035568],
                 [-104.6730163693428,39.86137221750304],
                 [-104.67306464910507,39.861417512336594]
                 
               ]
              ]  
            },
             {
                "type": "Point",
                "coordinates":   [-104.6730163693428,39.86137015864626]
            },   
            {
                "type": "Point",
                "coordinates":   [-104.67314511537552,39.86138251178601]
            }, 
            {
                "type": "Point",
                "coordinates":   [-104.67308610677719,39.86133309921363]
            }
         ]
      }
      """
   
    And form field geopolygon = coordinate_geometry
    And form field startDateTime = '2019-01-20T15:00:00Z'
    And form field endDateTime = '2020-12-19T15:00:00Z'
    And form field minAltitude = 0
    And form field maxAltitude = 5000
    When method GET
    Then status 200
    And match $ contains []

  @FDS-19933-2
  Scenario: implementation to send a request with lines,point and polygons that is exactly 4meters away from NOTAM area(Buffer of 3meters)
    Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
    And header Accept = 'application/json'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    And def coordinate_geometry =
      """
      
      {
         "type": "GeometryCollection",
         "geometries": [
                
              
              {
                  "type": "LineString",
                  "coordinates": [
                  
                [-104.67312633991241,39.862059872211816],
                [-104.67313706874847,39.86178810530619]
              ]
             },
            
             {
                  "type": "LineString",
                  "coordinates": [
                  
               [-104.67312902212143,39.86167692762547],
               [-104.67313706874847,39.86178398761751]
             ]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67313975095747,39.86178810530619]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67312902212143,39.862053695703196]
             },       
              
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.6731236577034,39.86167280993012],
                 [-104.67306733131409,39.86153486699351],
                 [-104.6729439496994,39.861584279420576],
                 [-104.6731236577034,39.86167280993012]
                 
               ]
              ]  
             },
          
            {
                "type": "Point",
                "coordinates":  [-104.6729439496994,39.86157810286916]
            },
            {
                "type": "Point",
                "coordinates":  [-104.67306464910507,39.86153486699351]
            },   
          
            {
               "type": "LineString",
               "coordinates": [
                [-104.6730700135231,39.86153692584535],
                [-104.6730700135231,39.86141339462567]
             ]  
             },
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.67306464910507,39.861417512336594],
                 [-104.67315047979355,39.86138045292954],
                 [-104.67308074235915,39.86133104035568],
                 [-104.6730163693428,39.86137221750304],
                 [-104.67306464910507,39.861417512336594]
                 
               ]
              ]  
            },
             {
                "type": "Point",
                "coordinates":   [-104.6730163693428,39.86137015864626]
            },   
            {
                "type": "Point",
                "coordinates":   [-104.67314511537552,39.86138251178601]
            }, 
            {
                "type": "Point",
                "coordinates":   [-104.67308610677719,39.86133309921363]
            }
         ]
      }
      """
    And form field geopolygon = coordinate_geometry
    And form field geopolygon = coordinate_geometry
    And form field startDateTime = '2019-01-20T15:00:00Z'
    And form field endDateTime = '2020-02-19T15:00:00Z'
    And form field minAltitude = 0
    And form field maxAltitude = 5000
    And form field buffer = 3
    When method GET
    Then status 200
    And match $ contains []

  @FDS-19933-3
  Scenario: implementation to send a request with lines,point and polygons that is eactly 4meters away from NOTAM area
    Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    And header Accept = 'application/json'
    And def coordinate_geometry =
      """
      
      {
         "type": "GeometryCollection",
         "geometries": [
                
              
              {
                  "type": "LineString",
                  "coordinates": [
                  
                [-104.67312633991241,39.862059872211816],
                [-104.67313706874847,39.86178810530619]
              ]
             },
            
             {
                  "type": "LineString",
                  "coordinates": [
                  
               [-104.67312902212143,39.86167692762547],
               [-104.67313706874847,39.86178398761751]
             ]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67313975095747,39.86178810530619]
             },
            
             {
                "type": "Point",
                "coordinates": [-104.67312902212143,39.862053695703196]
             },       
              
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.6731236577034,39.86167280993012],
                 [-104.67306733131409,39.86153486699351],
                 [-104.6729439496994,39.861584279420576],
                 [-104.6731236577034,39.86167280993012]
                 
               ]
              ]  
             },
          
            {
                "type": "Point",
                "coordinates":  [-104.6729439496994,39.86157810286916]
            },
            {
                "type": "Point",
                "coordinates":  [-104.67306464910507,39.86153486699351]
            },   
          
            {
               "type": "LineString",
               "coordinates": [
                [-104.6730700135231,39.86153692584535],
                [-104.6730700135231,39.86141339462567]
             ]  
             },
             {
              "type": "Polygon",
              "coordinates": [
               [
                 [-104.67306464910507,39.861417512336594],
                 [-104.67315047979355,39.86138045292954],
                 [-104.67308074235915,39.86133104035568],
                 [-104.6730163693428,39.86137221750304],
                 [-104.67306464910507,39.861417512336594]
                 
               ]
              ]  
            },
             {
                "type": "Point",
                "coordinates":   [-104.6730163693428,39.86137015864626]
            },   
            {
                "type": "Point",
                "coordinates":   [-104.67314511537552,39.86138251178601]
            }, 
            {
                "type": "Point",
                "coordinates":   [-104.67308610677719,39.86133309921363]
            }
         ]
      }
      """
    And form field geopolygon = coordinate_geometry
    And form field startDateTime = '2019-11-22T15:00:00Z'
    And form field endDateTime = '2019-11-24T15:00:00Z'
    And form field minAltitude = 0
    And form field maxAltitude = 9999
    And form field qcode = 'OB'
    And form field buffer = 4
    When method GET
    Then status 200
    And match $ contains []

  @FDS-19933-4
  Scenario: implementation to send a request with lines,point and polygons in a NOTAM area
    Given url 'https://ncs-load-ta-wus.azurewebsites.net/restrictedAreaNotams'
    And header Non-Human-Id-JWT-TOKEN = 'eyJraWQiOiJUQUdFQWItWXV4emxiV3pGM3g1ZTBQV2ZVZEUiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJOb24tSHVtYW4tSWQtSldUIiwiaWZzIjp7InNwQXR0cnMiOm51bGwsIm1haW51cG4iOm51bGwsIm1haW5vcmdhbml6YXRpb25pZCI6IlRCQyIsImFzc3VyYW5jZXNjb3JlIjpudWxsLCJhc3N1cmFuY2VsZXZlbCI6bnVsbH0sImlzcyI6IlBpbmdBY2Nlc3NBdXRoVG9rZW4iLCJmcCI6eyJzdWJqZWN0IjoiUGVyZlRlc3RYNTA5Q2xpZW50OjpDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUzo6ODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2IiwiYXV0aG5Tb3VyY2UiOiJQZXJmVGVzdFg1MDlDbGllbnQifSwiY2VydCI6eyJzdWJzaWRpYXJ5Y29tcGFueUlEIjpudWxsLCJJc3N1ZXIiOiJDTj1Cb2VpbmcgQmFzaWMgQXNzdXJhbmNlIFNvZnR3YXJlIElzc3VpbmcgQ0EgRzMsT1U9Y2VydHNlcnZlcnMsTz1Cb2VpbmcsQz1VUyIsInN1YmplY3QiOiJDTj10ZXN0Y2xpZW50Y2VydC5mZWRwLmRpZ2l0YWxhdmlhdGlvbnNlcnZpY2VzLmNvbSxPVT1zZXJ2ZXJzLE89Qm9laW5nLEM9VVMiLCJzZXJ2aWNlIjpudWxsLCJ1QXR0cmlidXRlcyI6bnVsbCwic3Vic2lkaWFyeUlEIjoiVEJDIiwiYm9laW5nQ29tcGFueUlEIjoiVEJDIiwic2VydmljZUlEIjoiUGVyZlRlc3RYNTA5Q2xpZW50Iiwic2VyaWFsTm8iOiIjODQ3NDI4ODk0MjA0MzcyOTI5OTk5OTM2NTYxNDg0ODM2NTUwMDgzNzE5NjM2In0sImV4cCI6MTYyOTIyNjU3MCwiaWF0IjoxNjI5MjI1Njc1fQ.-8Ucf8ao4Y5j7mmo-OLvVdAKwcwGEEodCpjSqdlv0t935GxNhTbMhml6v2plMRYaGyF-d-MNkXaGbLzZvuzbtg'
    And header Accept = 'application/json'
    And def coordinate_geometry =
      """
      
      {
         "type": "GeometryCollection",
         "geometries": [
                
              
              {
                  "type": "LineString",
                  "coordinates": [
                  
                 [-74.16832834482193,40.69214577539312],
                 [-74.16833102703094,40.69184275124398]
              ]
             },
            
             {
                  "type": "LineString",
                  "coordinates": [
                  
                [-74.16832029819489,40.691511253448745],
                [-74.16830956935883,40.69126720493811]
             ]
             },
            
             {
                "type": "Point",
                "coordinates": [-74.16832834482193,40.69213967424935]
             },
            
             {
                "type": "Point",
                "coordinates": [-74.16832029819489,40.69184071752019]
             },       
              
             {
              "type": "Polygon",
              "coordinates": [
               [
                  [-74.16832566261292,40.691846818691346],
                  [-74.16853219270706,40.69167395195924],
                  [-74.16832566261292,40.69151532091634],
                  [-74.16813254356384,40.69168412060295],
                  [-74.16832566261292,40.691846818691346]
                 
               ]
              ]  
             },
          
            {
                "type": "Point",
                "coordinates":  [-74.16853755712509,40.69166785077226]
            },
            {
                "type": "Point",
                "coordinates":  [-74.1681432723999,40.69168615433152]
            },   
          
          
          
           {
                "type": "Point",
                "coordinates":  [-74.16832834482193,40.691517354650045]
            },   
          
          {
                "type": "Point",
                "coordinates":  [-74.16830956935883,40.69126313745537]
            },
            
            
           
             {
              "type": "Polygon",
              "coordinates": [
               [
                  [-74.16830688714981,40.69127940738489],
                  [-74.16847854852676,40.69117568651619],
                  [-74.1682156920433,40.691179754004295],
                  [-74.16830688714981,40.69127940738489]
                 
               ]
              ]  
            },
             {
                "type": "Point",
                "coordinates":   [-74.16846513748169,40.69117365277205]
            },   
            {
                "type": "Point",
                "coordinates":   [-74.16821837425232,40.691177720260285]
            }
             
         ]
      }
      """
    And form field geopolygon = coordinate_geometry
    And form field startDateTime = '2019-01-20T15:00:00Z'
    And form field endDateTime = '2020-02-19T15:00:00Z'
    And form field minAltitude = 0
    And form field maxAltitude = 5000
    And form field buffer = 1
    When method GET
    Then status 200
    And match $ contains [{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Point","coordinates":[-74.168333,40.691667]},"properties":{"lower_alt_msl_ft":0,"upper_alt_msl_ft":99999}}],"notamProperties":{"ntmNumber":"157\/97\/A\/16","ntmNotamType":"NF","fir":{"ntmFir":[{"firId":"KZNY"}]},"airport":{"ntmApt":[{"aptId":"KEWR","aptIdIata":"EWR"}]},"ntmEffDate":{"value":"2016-03-14T20:01:07Z","effIndicator":""},"ntmExpDate":{"value":"2028-12-31T23:59:59Z","expIndicator":""},"qcode":{"ntmQcd":[{"qcdId":"WJLW","qcdDecode":"BANNER OR TARGET TOWING WILL TAKE PLACE"}]},"ntmTxtContent":"\nEWR PARA-SAIL AND BANNER TOWING OPERATIONS 1000FT AND BELOW IN\nUPPER AND LOWER  NEW YORK BAYS INCLUDING ROCKAWAY INLET\nINDEFINITELY.\n","ntmJeppStatusDate":"2015-04-02T14:52:17Z","jeppNumber":"19970814387"}}]
