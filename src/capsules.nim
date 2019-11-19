#[
Capsules module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the capsules within
SpaceX's fleet

This file is imported as a module and contains the following
functions:

    * capsules - returns all capsules
    * upcoming - returns information about upcoming capsules
    * past - returns information about past capsules
    * one - returns information about a specific capsule

]#

import urldata
import utils

proc capsules*(timeOut = 1): string =
    return utils.makeRequest(urldata.main_capsules, timeOut)

proc upcoming*(timeOut = 1): string =
    return utils.makeRequest(urldata.upcoming_capsules, timeOut)

proc past*(timeOut = 1): string =
    return utils.makeRequest(urldata.past_capsules, timeOut)

proc one*(capsule_serial = "",timeOut = 1): string =
    return utils.makeRequest(urldata.main_capsules & "/" & capsule_serial, timeOut)
 