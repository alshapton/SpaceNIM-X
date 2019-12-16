#[
Capsules module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the capsules within
SpaceX's fleet

This file is imported as a module and contains the following
functions:

    * allcapsules - returns all capsules
    * upcomingcapsules - returns information about upcoming capsules
    * pastcapsules - returns information about past capsules
    * capsule - returns information about a specific capsule

]#

import urldata
import utils

proc allcapsules*(timeOut = 1): string =
    return utils.makeRequest(urldata.main_capsules, timeOut)

proc upcomingcapsules*(timeOut = 1): string =
    return utils.makeRequest(urldata.upcoming_capsules, timeOut)

proc pastcapsules*(timeOut = 1): string =
    return utils.makeRequest(urldata.past_capsules, timeOut)

proc capsule*(capsule_serial = "",timeOut = 1): string =
    return utils.makeRequest(urldata.main_capsules & "/" & capsule_serial, timeOut)
 