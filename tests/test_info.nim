import unittest 
import info 

suite "SpaceX Fundamental Tests":
  echo "Testing: api"
  echo "         company"
  
  test "api":
    let info_data = info.api(2)
    check(info_data != "")
    check("asd"[2] == 'd')
  
  test "company":
    let company_data = info.company(2)
    check(company_data != "")
    check("asd"[2] == 'd')
      
  echo "End of suite: SpaceX Fundamental Tests"