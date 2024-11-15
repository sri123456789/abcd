@ignore
Feature: This feature is used to connect to postgre DB
  
Scenario: Establishing connection to NCS database - config is set in properties.yaml and read in karate-config.js
	Given def config =
	"""
	{
		database_url: '#(database_url)',
		database_user: '#(database_user)',
		database_pass: '#(database_pass)',
		database_ssl: '#(database_ssl)'
	}
	"""
	And def DBUtils = Java.type('com.jeppesen.ncs.utils.DBUtils')
	And def database = new DBUtils(config)