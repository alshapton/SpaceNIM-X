#[
Capsules module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the cores within
SpaceX's fleet

This file is imported as a module and contains the following
functions:

    * cores - returns all cores
    * upcoming - returns information about upcoming cores
    * past - returns information about past cores
    * one - returns information about a specific core

]#

import urldata
import utils

proc cores*(timeOut = 1): string =
    return utils.makeRequest(urldata.main_cores,timeOut)
    
proc upcoming*(timeOut = 1): string = 
    return utils.makeRequest(urldata.upcoming_cores,timeOut)

proc past*(timeOut = 1): string = 
    return utils.makeRequest(urldata.past_cores,timeOut)

proc one*(core_serial = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_cores & "/" & core_serial,timeOut)

