#[
Rockets module

This is a module which allows wrapper access to the
functions within the SpaceX API to return information
about the rockets

This file is imported as a module and contains the following
functions:

    * all - returns all rockets
    * rocket - returns information about one rocket rocket type

    * falcon1 - returns information about the Falcon 1
    * falcon9 - returns information about the Falcon 9
    * falconheavy - returns information about the Falcon Heavy
    * starship - returns information about the Starship
]#

import urldata
import utils


proc all*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_rockets, timeOut)

proc rocket*(rocket_id = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_rockets & "/" & rocket_id, timeOut)

proc falcon1*(timeOut = 1): string = 
    return utils.makeRequest(urldata.falcon1, timeOut)

proc falcon9*(timeOut = 1): string = 
    return utils.makeRequest(urldata.falcon9, timeOut)

proc falconheavy*(timeOut = 1): string = 
    return utils.makeRequest(urldata.falconheavy, timeOut)

proc starship*(timeOut = 1): string = 
    return utils.makeRequest(urldata.starship, timeOut)


