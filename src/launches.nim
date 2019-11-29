#[
Launches module

This is a module which allows wrapper access to data about
all SpaceX launches - both past and (as far as is known) in
the future

This file is imported as a module and contains the following
functions:

    * alllaunches - returns all launch information
    * latest - returns information about the latest launches
    * nextlaunch - returns information about the next launch
    * upcoming - returns information about the future launches
    * past - returns information about previous launches
    * one - returns information about a specific launch

]#

import urldata
import utils

proc alllaunches*(timeOut = 1): string =
    return utils.makeRequest(urldata.main_launches, timeOut)
    
proc latest*(timeOut = 1): string = 
    return utils.makeRequest(urldata.latest_launches, timeOut)

proc nextlaunch*(timeOut = 1): string = 
    return utils.makeRequest(urldata.next_launches, timeOut)
 
proc upcoming*(timeOut = 1): string = 
    return utils.makeRequest(urldata.upcoming_launches, timeOut)

proc past*(timeOut = 1): string = 
    return utils.makeRequest(urldata.past_launches, timeOut)

proc one*(launch_id = 0, timeOut = 1): string = 
    return utils.makeRequest(urldata.main_launches & "/" & $launch_id, timeOut)
