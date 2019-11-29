#[
Launchpads module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the launchpads that
SpaceX use

This file is imported as a module and contains the following
functions:

    * launchpads - returns all launchpad information
    * one - returns information about a specific launchpad

]#

import urldata
import utils


proc launchpads*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_launchpads, timeOut)

proc one*(pad = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_launchpads & "/" & pad, timeOut)

    