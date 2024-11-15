@ignore
Feature: Populate the database with a known set of NOTAMs 

Background: 
	* url extract_service

Scenario: Ingest NOTAM by XML file name
	* def ingest = 
		"""
	*	function() {  
	*  var files = [ '20170426F2A.xml', '2017012244F.xml', '20190536F58.xml', '2019053629B.xml', 'all.xml' ]; 
	*  for ( var i = 0; i < files.length; i++ ) {
		*    karate.call( 'classpath:com/jeppesen/ncs/extract/IngestHelper.feature@name', { request_file_name: 'services/load/' + files[i] } );
		 * }
		*}
		"""
	* eval ingest()