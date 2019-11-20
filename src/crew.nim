#[
Crew module


This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the astronauts on SpaceX
missions

This file is imported as a module and contains the following
functions:

    * crew - returns all crew information

]#

import urldata
import utils


proc crew*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_crew,timeOut)

