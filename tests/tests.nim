import unittest 
import json

import crew
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
    let info_data = info.api(2)
    let infoJSON = parseJson(info_data)
    check(info_data != "")
    check(infoJSON["project_name"].getStr() == "SpaceX-API")
    
  test "company":
    let company_data = info.company(2)
    let companyJSON = parseJson(company_data)
    check(company_data != "")
    check(companyJSON["ceo"].getStr() == "Elon Musk")
    check(companyJSON["coo"].getStr() == "Gwynne Shotwell")
    check(companyJSON["founded"].getInt() == 2002)
      
echo "End of suite: SpaceX Fundamental Tests"