@ignore
Feature: Utility JavaScript function

Scenario: calling ncs database
	* def sleep = function( pause ) { java.lang.Thread.sleep( pause ) }
	* def random = function( max ) { return Math.floor( Math.random() * max ).toString() }