function fn() {
	var env = karate.env;
	karate.log('karate.env system property was:', env);

	// a custom default
	if (!env) {
		env = 'default';
	}
	karate.log('karate Environment is: ', env)

	var config = karate.read('classpath:properties.yaml');

	// declare different environment configurations
	switch (env) {

	case ('local'):
		config.extract_service = 'http://localhost:8080/extract-service';
		config.load_service = 'http://localhost:8080/load-service';
		break;

	case ('test'):
		config.extract_service = 'https://ncs-extract-test-wus.azurewebsites.net';
		config.load_service = 'https://ncs-load-test-wus.azurewebsites.net/v2';
		break;

	default:
		// load from properties file
		break;
	}

	// set global connection parameters
	karate.configure('connectTimeout', 1000000);
	karate.configure('readTimeout', 1000000);
	karate.configure('ssl', {
		keyStore : 'classpath:' + config.key_store_name,
		keyStorePassword : config.key_store_pass,
		keyStoreType : config.key_store_type
	});

	//if ((config.test_type).equals('functional')) {
		// cache database connection 'callSingle' is guaranteed to run only
		// once even across all threads
		//config.database_connection = karate.callSingle(
			//	'classpath:com/jeppesen/ncs/common/DatabaseConnection.feature',
			//	config).database;

		//karate.log('Established connection to:', config.database_url)

		// populate the database once before any other actions are taken
	//	karate.callSingle(
	//			'classpath:com/jeppesen/ncs/database/PopulateDatabase.feature',
	//			config)
	}
	//return config;