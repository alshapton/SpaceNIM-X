#[
Test Suite for SpaceNIM-X

This tests all functions within the SPACENIM-X wrapper

    * capsules
    * cores
    * crew
    * dragons
    * history
    * info
    * landingpads
    * launches
    * launchpads
    * missions
    * payloads
    * roadster
    * rockets
    * ships

    Each of the functions within those modules will be tested

]#
import unittest 
import json

import capsules
import cores
import crew
import dragons
import history
import info 
import landingpads
import launches
import launchpads
import missions
import payloads
import roadster
import rockets
import ships

echo "Start of Test Suite"
echo "\n"

suite "Crew Tests":
  echo "Testing: crew"
  
  test "Crew":
    let crew_data = crew.crew(2)
    check(crew_data != "")
      
echo "End of suite: Crew Tests"


suite "SpaceX Fundamental Tests":
  echo "Testing: api"
  echo "         company"
  
  test "api":
    let info_data = info.api(timeOut = 1)
    let infoJSON = parseJson(info_data)
    check(info_data != "")
    check(infoJSON["project_name"].getStr() == "SpaceX-API")
    
  test "company":
    let company_data = info.company(timeOut = 1)
    let companyJSON = parseJson(company_data)
    check(company_data != "")
    check(companyJSON["ceo"].getStr() == "Elon Musk")
    check(companyJSON["coo"].getStr() == "Gwynne Shotwell")
    check(companyJSON["founded"].getInt() == 2002)
      
echo "End of suite: SpaceX Fundamental Tests"

suite "SpaceX Capsule Tests":
  echo "Testing: capsules"
  echo "         past"
  echo "         upcoming"
  echo "         one"

  test "capsules":
    let capsules_data = capsules.capsules(timeOut = 1)
    let capsulesJSON = parseJson(capsules_data)
    check(capsules_data != "")
    check(capsulesJSON[0]["capsule_id"].getStr() == "dragon1")
    
  test "past":
    let past_data = capsules.past(timeOut = 1)
    let pastJSON = parseJson(past_data)
    check(past_data != "")
    check(pastJSON[1]["missions"][0]["name"].getStr() == "COTS 2")
    
  test "upcoming":
    let upcoming_data = capsules.upcoming(timeOut = 1)
    let upcomingJSON = parseJson(upcoming_data)
    check(upcoming_data != "")
    check(upcomingJSON[0]["type"].getStr() == "Dragon 2.0")

test "one":
    let one_data = capsules.one(capsule_serial = "C112", timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJson["type"].getStr() == "Dragon 1.1")
      
echo "End of suite: SpaceX Capsule Tests"

suite  "SpaceX Core Tests":
  echo "Testing: cores"
  echo "         past"
  echo "         upcoming"
  echo "         one"

  test "cores":
    let cores_data = cores.cores(timeOut = 1)
    let coresJSON = parseJson(cores_data)
    check(cores_data != "")
    check(coresJSON[0]["missions"][0]["name"].getStr() == "FalconSat")
    
  test "past":
    let past_data = cores.past(timeOut = 1)
    let pastJSON = parseJson(past_data)
    check(past_data != "")
    check(pastJSON[1]["missions"][0]["name"].getStr() == "DemoSat")
    
  test "upcoming":
    let upcoming_data = cores.upcoming(timeOut = 1)
    let upcomingJSON = parseJson(upcoming_data)
    check(upcoming_data != "")
    check(upcomingJSON[0]["status"].getStr() == "lost")

test "one":
    let one_data = cores.one(core_serial = "B1051", timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJson["block"].getInt() == 5)
      
echo "End of suite: SpaceX Capsule Tests"

suite  "SpaceX Crew Tests":
  echo "Testing: crew"

  test "crew":
    let crew_data = crew.crew(timeOut = 1)
    check(crew_data == "[]")
    
echo "End of suite: SpaceX Crew Tests"

suite  "SpaceX Dragon Tests":
  echo "Testing: dragons"
  echo "         one"

  test "dragons":
    let dragons_data = dragons.dragons(timeOut = 1)
    let dragonsJSON = parseJson(dragons_data)
    check(dragons_data != "")
    check(dragonsJSON[0]["thrusters"][0]["fuel_1"].getStr() == "nitrogen tetroxide")
    
test "one":
    let one_data = dragons.one(dragon_id = "dragon1", timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["thrusters"][0]["amount"].getInt() == 18)

echo "End of suite: SpaceX Dragon Tests"

suite  "SpaceX History Tests":
  echo "Testing: history"
  echo "         one"

  test "history":
    let history_data = history.history(timeOut = 1)
    let historyJSON = parseJson(history_data)
    check(history_data != "")
    check(historyJSON[2]["flight_number"].getInt() == 5)
    
test "one":
    let one_data = history.one(event = 10, timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["event_date_unix"].getInt() == 1398992400)

echo "End of suite: SpaceX History Tests"

suite  "SpaceX Landingpads Tests":
  echo "Testing: landingpads"
  echo "         one"

  test "landingpads":
    let landingpads_data = landingpads.landingpads(timeOut = 1)
    let landingpadsJSON = parseJson(landingpads_data)
    check(landingpads_data != "")
    check(landingpadsJSON[3]["location"]["name"].getStr() == "Vandenberg Air Force Base")
    
test "one":
    let one_data = landingpads.one(pad = "LZ-4", timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["location"]["latitude"].getFloat() == 34.632989)

echo "End of suite: SpaceX LandingPad Tests"

suite "SpaceX Launch Tests":
  echo "Testing: alllaunches"
  echo "         latest"
  echo "         nextlaunch"
  echo "         upcoming"
  echo "         past"
  echo "         one"

  test "alllaunches":
    let launches_data = launches.alllaunches(timeOut = 5)
    let launchesJSON = parseJson(launches_data)
    check(launches_data != "")
    check(launchesJSON[0]["launch_date_local"].getStr() == "2006-03-25T10:30:00+12:00")
    
  test "past":
    let past_data = launches.past(timeOut = 1)
    let pastJSON = parseJson(past_data)
    check(past_data != "")
    check(pastJSON[1]["rocket"]["first_stage"]["cores"][0]["core_serial"].getStr() == "Merlin2A")
    
  test "upcoming":
    let upcoming_data = launches.upcoming(timeOut = 1)
    let upcomingJSON = parseJson(upcoming_data)

    let nextJSON = parseJson(launches.nextlaunch(timeOut = 1)) # Get next flight to compare with upcoming flight.....

    check(upcoming_data != "")
    check(upcomingJSON[0]["flight_number"].getint() == nextJSON["flight_number"].getint())

# need to sort this out....
  test "latest":
    let latest_data = launches.latest(timeOut = 1)
    let latestJSON = parseJson(latest_data)

    let pastJSON = parseJson(launches.past(timeOut = 1)) # Get next flight to compare with upcoming flight.....

    check(latest_data != "")
    check(latestJSON["flight_number"].getint() == pastJSON[len(pastJSON)-1]["flight_number"].getint())
  
  test "one":
      let one_data = launches.one(launch_id = 65, timeOut = 1)
      let oneJSON = parseJson(one_data)
      check(one_data != "")
      check(oneJson["mission_id"][0].getStr() == "F4F83DE")
      
echo "End of suite: SpaceX Launch Tests"

suite  "SpaceX Launchpad Tests":
  echo "Testing: launchpads"
  echo "         one"

  test "launchpads":
    let launchpads_data = launchpads.launchpads(timeOut = 1)
    let launchpadsJSON = parseJson(launchpads_data)
    check(launchpads_data != "")
    check(launchpadsJSON[0]["location"]["name"].getStr() == "Vandenberg Air Force Base")
    
test "one":
    let one_data = launchpads.one(pad = "vafb_slc_4e", timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["location"]["longitude"].getFloat() == -120.610829)

echo "End of suite: SpaceX Launchpad Tests"

suite  "SpaceX Missions Tests":
  echo "Testing: missions"
  echo "         one"

  test "missions":
    let missions_data = missions.missions(timeOut = 1)
    let missionsJSON = parseJson(missions_data)
    check(missions_data != "")
    check(missionsJSON[len(missionsJSON)-1]["website"].getStr() == "https://www.eutelsat.com/en/home.html#")
    
  test "one":
      let one_data = missions.one(mission_id = "6C42550", timeOut = 1)
      let oneJSON = parseJson(one_data)
      check(one_data != "")
      check(oneJSON["manufacturers"][1].getStr() == "Boeing")

echo "End of suite: SpaceX Missions Tests"

suite  "SpaceX Payload Tests":
  echo "Testing: payloads"
  echo "         one"

  test "payloads":
    let payloads_data = payloads.payloads(timeOut = 1)
    let payloadsJSON = parseJson(payloads_data)
    check(payloads_data != "")
    check(payloadsJSON[len(payloadsJSON)-1]["payload_id"].getStr() == "Smallsat SSO Rideshare 2 (Mission 9)")
    
  test "one":
      let one_data = payloads.one(payload_id = "Telkom-4", timeOut = 1)
      let oneJSON = parseJson(one_data)
      check(one_data != "")
      check(oneJSON["customers"][0].getStr() == "Telkom")

echo "End of suite: SpaceX Payloads Tests"

suite  "SpaceX Rockets Tests":
  echo "Testing: all"
  echo "         rocket"
  echo "         falcon1"
  echo "         falcon9"
  echo "         falconheavy"
  echo "         starship"

  test "all":
    let all_data = rockets.all(timeOut = 1)
    let allJSON = parseJson(all_data)
    check(all_data != "")
    check(allJSON[0]["first_flight"].getStr() == "2006-03-24")
      
  test "rocket":
      let one_data = rockets.rocket(rocket_id = "falcon9", timeOut = 1)
      let oneJSON = parseJson(one_data)
      check(one_data != "")
      check(oneJSON["engines"]["number"].getInt() == 9)

  test "falcon1":
    let one_data = rockets.falcon1(timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["cost_per_launch"].getInt() == 6700000)

  test "falcon9":
    let one_data = rockets.falcon9( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["cost_per_launch"].getInt() == 50000000)

  test "falconheavy":
    let one_data = rockets.falconheavy( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["cost_per_launch"].getInt() == 90000000)

  test "starship":
    let one_data = rockets.starship( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["cost_per_launch"].getInt() == 7000000)

  echo "End of suite: SpaceX Rocket Tests"

suite  "SpaceX Roadster Test":
  echo "Testing: roadster"

  test "roadster":
    let roadster_data = roadster.roadster(timeOut = 1)
    let roadsterJSON = parseJson(roadster_data)
    check(roadster_data != "")
    check(roadsterJSON["launch_mass_lbs"].getInt() == 2976)

echo "End of suite: SpaceX Roadster Test"

suite  "SpaceX Ships Tests":
  echo "Testing: ships"
  echo "         one"
  echo "         ocisly"
  echo "         jrti1"
  echo "         jrti2"
  echo "         asog"

  test "ships":
    let ships_data = ships.ships(timeOut = 1)
    let shipsJSON = parseJson(ships_data)
    check(ships_data != "")
    check(shipsJSON[0]["missions"][0]["name"].getStr() == "COTS 1")
      
  test "one":
      let one_data = ships.one(ship_id = "GONAVIGATOR", timeOut = 1)
      let oneJSON = parseJson(one_data)
      check(one_data != "")
      check(oneJSON["roles"][1].getStr() == "Fairing Recovery")

  test "Of Course I Still Love You":
    let one_data = ships.ocisly( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["year_built"].getInt() == 2015)

  test "Just Read The Instructions 1":
    let one_data = ships.jrti1( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["ship_model"].getStr() == "Marmac 300")

  test "Just Read The Instructions 2":
    let one_data = ships.jrti2( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["roles"][0].getStr() == "ASDS barge")

  test "A Shortfall Of Gravitas":
    let one_data = ships.asog( timeOut = 1)
    let oneJSON = parseJson(one_data)
    check(one_data != "")
    check(oneJSON["home_port"].getStr() == "Port Canaveral")

  echo "End of suite: SpaceX Ships Tests"

  echo "\n"
  echo "End of Test Suite"