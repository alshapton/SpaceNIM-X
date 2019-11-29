#[
DLandingpads module

This is a module which allows wrapper access to information concerning
the landing pads that SpaceX uses to allow its' rocket cores to land
ready for refurbishment and reuse. Note that this does NOT include
drone ships

This file is imported as a module and contains the following
functions:

    * landingpads - returns all landing pad information
    * one - returns information about a specific pad

]#

import urldata
import utils


proc landingpads*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_landingpads,timeOut)

proc one*(pad = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_landingpads & "/" & pad,timeOut)
