@Smoke
Feature: Access the database 

Scenario: get count of items from ncs_ntm_notam table
	* def query = 'SELECT COUNT(*) FROM public.ncs_ntm_notam;'
	* def count = database_connection.readValue(query)
	* print 'the number of items in ncs_ntm_notam table is:', count
