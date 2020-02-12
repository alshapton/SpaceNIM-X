##[
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

]##

import urldata
import utils

proc capsules*(timeOut = 1): string =
    # Provides information about the all the capsules SpaceX have
    #
    # * Parameter:  timeOut         timeout in seconds (default: 1 sec)
    return utils.makeRequest(urldata.main_capsules, timeOut)

proc upcoming*(timeOut = 1): string =
    # Upcoming capsules due for launch
    #
    # * Parameter:  timeOut         timeout in seconds (default: 1 sec)
    return utils.makeRequest(urldata.upcoming_capsules, timeOut)

proc past*(timeOut = 1): string =
    # Previous capsules that SpaceX launched
    #
    # * Parameter:  timeOut         timeout in seconds (default: 1 sec)
    return utils.makeRequest(urldata.past_capsules, timeOut)

proc one*(capsule_serial = "",timeOut = 1): string =    
    # Provides information about a specific capsule
    #
    # * Parameter:  timeOut         timeout in seconds (default: 1 sec)
    # *             capsule_serial  serial number of the capsule of interest
    return utils.makeRequest(urldata.main_capsules & "/" & capsule_serial, timeOut)
 