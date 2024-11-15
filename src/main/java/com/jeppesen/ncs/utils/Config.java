
package com.jeppesen.ncs.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.security.InvalidKeyException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.microsoft.azure.storage.StorageException;

/**
 * 
 * @author jason.stock
 */

public class Config {
	public static final Logger LOG = LoggerFactory.getLogger(Config.class);

	private final static Properties properties = new Properties();

	private final static String PROPERTIES_NAME = "src/test/java/properties.yaml";

	/**
	 * Retrieve the property specified by the parameter, and remove the first and
	 * last character. it is IMPORTANT that the this is done because a yaml file is
	 * read with 'quotes'.
	 * 
	 * @param property to search for.
	 * @return the updated property
	 */

	private static String getProperty(String property) {
		String s = properties.getProperty(property).trim();
		return (s == null || s.length() == 0) ? null : (s.substring(1, s.length() - 1));
	}

	/**
	 * Read the configuration file to declare variables, such as; database
	 * information, ssl information, etc.
	 * 
	 * @return a <code>Map</code> of all the properties read.
	 * @throws IOException
	 */

  protected static Map<String, String> readConfiguration() throws IOException {
  try (InputStream resourceStream = new FileInputStream( PROPERTIES_NAME )) {
  properties.load( resourceStream ); } catch ( IOException e ) {
  e.printStackTrace(); throw e; }
  
  Map<String, String> configuration = new HashMap<>();
  
  for ( String key : properties.stringPropertyNames() ) { String value =
  getProperty( key ); configuration.put( key, value ); }
  
  return configuration; }
}

/**
 * Set the initial environment configuration for the Azure backend
 * 
 *//*
	 * public static void configureEnvironment() { try { Map<String, String> config
	 * = readConfiguration(); DBUtils database = new DBUtils( config );
	 * database.cleanDatabase(); LOG.info( "Successfully truncated NCS tables." );
	 * 
	 * AzureBlobStorage storage = new AzureBlobStorage( config ); int itemsRemoved =
	 * storage.deleteAllBlobs(); LOG.info( "Successfully removed " + itemsRemoved +
	 * " blobs from Azure blob storage." ); } catch ( IOException | SQLException e )
	 * { LOG.error( "Unable to configure the database before running test suite.", e
	 * ); } catch ( InvalidKeyException | StorageException | URISyntaxException e )
	 * { LOG.error(
	 * "Unable to configure the Azure storage account before running test suite.", e
	 * ); } }
	 * 
	 * public static void main(String[] args) { configureEnvironment(); } }
	 */