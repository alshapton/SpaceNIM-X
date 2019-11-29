#[
Missions module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about SpaceX missions

This file is imported as a module and contains the following
functions:

    * missions - returns all mission information
    * one - returns information about a specific mission

]#

import urldata
import utils


proc missions*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_missions, timeOut)

proc one*(mission_id = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_missions & "/" & mission_id , timeOut )
