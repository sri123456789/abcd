package com.jeppesen.ncs.Load;


import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import com.jeppesen.ncs.utils.Config;


 @RunWith( Karate.class )
 @KarateOptions( tags = "~@ignore" )
// @KarateOptions(features = "classpath:com/jeppesen/ncs/Load/FDS-19883.feature")
// @KarateOptions(features = "classpath:com/jeppesen/ncs/Load/FDS-19991.feature")
// @KarateOptions(features = "classpath:com/jeppesen/ncs/Load/Fedproxy.feature")
// @KarateOptions(features = "classpath:com/jeppesen/ncs/Load/Post.feature")


public class Runner
{
	public static final Logger LOG = LoggerFactory.getLogger( Runner.class );

	@BeforeClass 
	public static void before()
	{
		System.setProperty( "karate.env", "test" );
		/* Config.configureEnvironment(); */
	}
}
