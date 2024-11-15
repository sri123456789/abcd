	package com.jeppesen.ncs

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

/**
 * Simulation class to execute performance tests for each service.
 * 
 *setUp(
   * scn.injectOpen(
   *  nothingFor(4), // 1
   *atOnceUsers(10), // 2
   * rampUsers(10).during(5), // 3
   * constantUsersPerSec(20).during(15), // 4
   *constantUsersPerSec(20).during(15).randomized(), // 5
   * rampUsersPerSec(10).to(20).during(10), // 6
   * rampUsersPerSec(10).to(20).during(10).randomized(), // 7
   *stressPeakUsers(1000).during(20) // 8
  ).protocols(httpProtocol)
);
 /
class PerformanceSimulation extends Simulation {
  
  val protocol = karateProtocol()

  val restrictedAreaNotams = scenario("Load - Runway")
    .exec(karateFeature("classpath:Performance/4FltSeattlettoDulles1.feature@performance"))
    
   setUp(
    restrictedAreaNotams.inject(
      atOnceUsers(10000)
    ).protocols(protocol)
  ).maxDuration(330 minutes)
}




