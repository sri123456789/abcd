 @Smoke
Feature: The feature collection to test the Json response structure matching with response structure defined in OpenAPI by using the getNotamByJnn method in load-service

Background: 
	* url Load_Previousversion

Scenario: naive implementation to send request with JNN= 2017012244F, which is 2017012244F.xml, and verify Json response structure.
# Beside testing the "FeatureCollection" element,the following "notamProperties" are also tested: ntmNumber, ntmNotamType, fir, airport, ntmEffDate, 
# ntmEffDate, ntmExpDate, qcode, ntmTxtContent, ntmJeppStatusDate and jeppNumber

	Given path 'getNotamByJnn'
	
	And form field jnn = '2017012244F'
	* print 'jnn=2017012244F'
	
	When method GET
	
	Then status 200
	And match response ==  [{"type":"FeatureCollection","features":[{"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-119.337543956658,35.0996963528604],[-119.338027072116,35.1029441192232],[-119.339271966859,35.1060520089559],[-119.341230871729,35.1089005625103],[-119.343828550858,35.1113802777036],[-119.346965186262,35.1133958229811],[-119.350520212346,35.1148697066668],[-119.354356953198,35.1157452603221],[-119.358327883833,35.1159888207403],[-119.362280311875,35.1155910260726],[-119.366062259418,35.1145671758986],[-119.369528316917,35.1129566413578],[-119.372545242075,35.1108213483029],[-119.37499708692,35.1082433923525],[-119.376789655013,35.1053218782858],[-119.3778541173,35.1021691061125],[-119.378149648275,35.0989062512058],[-119.377664982514,35.0956587051547],[-119.376418833632,35.0925512567534],[-119.37445916172,35.0897032983614],[-119.37186131942,35.0872242415535],[-119.368725149558,35.0852093176512],[-119.365171146853,35.0837359237317],[-119.36133583142,35.0828606536711],[-119.357366511233,35.0826171275015],[-119.353415633495,35.0830147018574],[-119.349634940091,35.0840381107],[-119.346169649635,35.0856480500782],[-119.343152887647,35.0877826847477],[-119.34070057726,35.090360019323],[-119.338906985787,35.0932810436236],[-119.337841098083,35.0964335322022],[-119.337543956658,35.0996963528604]]]},"properties":{"lower_alt_msl_ft":0,"upper_alt_msl_ft":99999}}],"notamProperties":{"ntmNumber":"01\/096","ntmNotamType":"UD","fir":{"ntmFir":[{"firId":"KZLA"}]},"airport":{"ntmApt":[{"aptId":"L17","aptIdIata":"   "}]},"ntmEffDate":{"value":"2017-01-16T17:20:00Z","effIndicator":""},"ntmExpDate":{"value":"3000-12-31T23:59:59Z","expIndicator":"PERM"},"qcode":{"ntmQcd":[{"qcdId":"WULW","qcdDecode":"UNMANNED AIRCRAFT WILL TAKE PLACE"}]},"ntmTxtContent":"\n\nL17 AIRSPACE UAS WI AN AREA DEFINED AS 1NM RADIUS OF \nFLW073025 (4.7NM ESE L17) SFC-1600FT 1701161720-PERM\n\n\t","ntmJeppStatusDate":"2017-01-16T17:22:30Z","jeppNumber":"2017012244F"}}]

	* print 'Test case by using 2017012244F.xml to test out the ntmNumber, ntmNotamType, fir, airport, ntmEffDate, ntmEffDate, ntmExpDate, qcode, ntmTxtContent, ntmJeppStatusDate and jeppNumber elements, The response=', response

	# Using com.jeppesen.ncs.utils.ApiUtils.validateResponseNotamJsonStructure() to check the response
	* def ApiUtils = Java.type('com.jeppesen.ncs.utils.ApiUtils')
	* def result = ApiUtils.validateNotamJsonArrayStructureArray(response)
	* print 'result=', result
	* assert result == true
	
	
Scenario: naive implementation to send request with JNN= 20190536F58, which is 20190536F58.xml, and verify Json response structure.
# Beside testing the "FeatureCollection" element, the following "notamProperties" are also tested: airspace

	Given path 'getNotamByJnn'
	
	And form field jnn = '20190536F58'
	
	When method GET
	* print 'jnn=20190536F58'
	
	Then status 200
	And match response == []

	* print 'Test case by using 20190536F58.xml to test out airspace element , The response=', response

	# Using com.jeppesen.ncs.utils.ApiUtils.validateResponseNotamJsonStructure() to check the response
	* def ApiUtils = Java.type('com.jeppesen.ncs.utils.ApiUtils')
	* def result = ApiUtils.validateNotamJsonArrayStructureArray(response)
	* print 'result=', result
	* assert result == true
	
Scenario: naive implementation to send request with JNN= 2019052B464, which is 2019052B464.xml, and verify Json response structure.
# Beside testing the "FeatureCollection" element, the following "notamProperties" are also tested: airway

	Given path 'getNotamByJnn'
	
	And form field jnn = '2019053629B'
	
	When method GET
	
	Then status 200
	* print 'jnn=2019053629B'
	And match response ==  []

	* print 'Test case by using 2019052B464.xml to test out airway element , The response=', response

	# Using com.jeppesen.ncs.utils.ApiUtils.validateResponseNotamJsonStructure() to check the response
	* def ApiUtils = Java.type('com.jeppesen.ncs.utils.ApiUtils')
	* def result = ApiUtils.validateNotamJsonArrayStructureArray(response)
	* print 'result=', result
	* assert result == true
	
Scenario: naive implementation to send request with JNN= all, which is all.xml. The all.xml is a made up eNOTAM xml which includes all the 
# the elements Load query could return. This also covers the waypoint 

	Given path 'getNotamByJnn'
	
	And form field jnn = 'all'
	
	When method GET
	
	Then status 200
	* print 'jnn=all'
	And match response == []

	* print 'Test case by using all.xml, The response=', response

	# Using com.jeppesen.ncs.utils.ApiUtils.validateResponseNotamJsonStructure() to check the response
	* def ApiUtils = Java.type('com.jeppesen.ncs.utils.ApiUtils')
	* def result = ApiUtils.validateNotamJsonArrayStructureArray(response)
	* print 'result=', result
	* assert result == true
	