import unittest 
import crew 

suite "Crew Tests":
  echo "Testing: crew"
  
  test "Crew":
    let crew_data = crew.crew(2)
    check(crew_data != "")
      
echo "End of suite: Crew Tests"