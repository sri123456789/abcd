
package com.jeppesen.ncs;


import static org.junit.Assert.assertTrue;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.junit.BeforeClass;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.jeppesen.ncs.utils.Config;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;


/**
 * Scans the whole com.jeppesen.ncs package and runs all existing feature files
 *

 */
@KarateOptions( tags =
{
	"~@ignore"
} )
public class GlobalReport
{

	public static final Logger LOG = LoggerFactory.getLogger( GlobalReport.class );

	private static final String PROJECT_NAME = "NCS Suite Report";

	private static final String OUTPUT_PATH = "target/reports/stats";

	private static final int THREAD_COUNT = 5;

	/**
	 * Entry point to test - runs before any tests.
	 * 
	 * Clear the database 
	 * 
	 */
	

	private static void generateReport(String karateOutputPath)
	{
		Collection<File> jsonFiles = FileUtils.listFiles( new File( karateOutputPath ), new String[ ]
		{
			"json"
		}, true );

		List<String> jsonPaths = new ArrayList<String>( jsonFiles.size() );
		jsonFiles.forEach( file -> jsonPaths.add( file.getAbsolutePath() ) );

		Configuration config = new Configuration( new File( "target/reports" ), PROJECT_NAME );
		ReportBuilder reportBuilder = new ReportBuilder( jsonPaths, config );
		reportBuilder.generateReports();
	}

	@Test
	public void testParallel()
	{
		Results results = Runner.parallel( getClass(), THREAD_COUNT, OUTPUT_PATH );
		generateReport( results.getReportDir() );
		assertTrue( results.getErrorMessages(), results.getFailCount() == 0 );
	}

}
