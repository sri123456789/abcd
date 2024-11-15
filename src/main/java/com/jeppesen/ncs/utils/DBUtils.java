package com.jeppesen.ncs.utils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 * Establish a connection to Azure database for PostgreSQL
 * 
 * Requires the PostgreSQL JDBC Driver in the application classpath to make a
 * valid connection.
 * 
 * 
 * 
 */
public class DBUtils {
	// TODO: Make the class and jdbc object a singleton object to preserve
	// a single database connection.
	private JdbcTemplate jdbc;

	public static final Logger LOG = LoggerFactory.getLogger(DBUtils.class);

	/**
	 * Constructor to configure the database given a map of credentials
	 * 
	 * This is includes the following:
	 * 
	 * <ul>
	 * <li>url : host:port/database</li>
	 * <li>username : admin</li>
	 * <li>password : pass</li>
	 * <li>ssl : true</li>
	 * </ul>
	 *
	 * @param config map containing the associated <key, value> pairs
	 */
	public DBUtils(Map<String, String> config) {
		buildJbdcTemplate(config);
	}

	/**
	 * Default constructor to read from the database configuration from the
	 * application properties.yaml file
	 * 
	 * @throws IOException
	 * 
	 */
	public DBUtils() throws IOException {
		Map<String, String> config = Config.readConfiguration();
		buildJbdcTemplate(config);
	}

	/**
	 * Setup the configuration for the database.
	 * 
	 * This is includes the following:
	 * 
	 * <ul>
	 * <li>url : host:port/database</li>
	 * <li>username : admin</li>
	 * <li>password : pass</li>
	 * <li>ssl : true</li>
	 * </ul>
	 *
	 * @param config map containing the associated <key, value> pairs
	 */
	private void buildJbdcTemplate(Map<String, String> config) {
		String driver = "org.postgresql.Driver";

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		if (config.get("database_ssl").equals("true")) {
			Properties info = new Properties();
			info.put("sslmode", "require");
			dataSource.setConnectionProperties(info);
		}

		dataSource.setDriverClassName(driver);
		dataSource.setUrl(config.get("database_url"));
		dataSource.setUsername(config.get("database_user"));
		dataSource.setPassword(config.get("database_pass"));

		jdbc = new JdbcTemplate(dataSource);
	}

	/**
	 * This method is useful for running static SQL with a known outcome. The query
	 * is expected to be a single row/single column query; the returned result will
	 * be directly mapped to the corresponding object type.
	 * 
	 * @param query the SQL query to execute
	 * @return the result object of the required type, or <code>null</code> in case
	 *         of SQL NULL
	 */
	public Object readValue(String query) {
		return jdbc.queryForObject(query, Object.class);
	}

	/**
	 * The query is expected to be a single row query; the result
	 * row will be mapped to a <code>Map</code> (one entry for each column,
	 * using the column name as the key).
	 * 
	 * @param query the <b>SQL</b> query to execute
	 * @return the result <code>Map</code> (one entry per column, with
	 * 				 column name as key)
	 */
	public Map<String, Object> readRow(String query)
	{
		return jdbc.queryForMap( query );
	}

/**
 * The results will be mapped to a List (one entry for each row) of Maps (one
 * entry for each column using the column name as the key). Each element in the
 * list will be of the form returned by this interface's queryForMap methods.
 * 
 * @param query
 * @return a <code>List</code> that contains a <code>Map</code> per row
 */
	  public List<Map<String, Object>> readRows(String query) { return
	  jdbc.queryForList( query ); }
	  
	  public void cleanDatabase() throws SQLException { String SQLStatement =
	  "TRUNCATE TABLE ncs_ntm_notam,ncs_ntm_shape,ncs_ntm_response_format";
	  
	  try { Connection connection = jdbc.getDataSource().getConnection(); Statement
	  statement = connection.createStatement(); statement.executeUpdate(
	  SQLStatement ); } catch ( SQLException e ) { LOG.error(
	  "Failure trying to truncate tables with SQL statement: " + SQLStatement );
	  throw e; } }
	  
	  }
	 