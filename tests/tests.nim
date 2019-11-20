import unittest 
import json

import capsules
import cores
import crew
import dragons
import history
import info 

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
