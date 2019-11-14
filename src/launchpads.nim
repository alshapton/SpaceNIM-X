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
import httpClient


proc launchpads*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_launchpads)

proc one*(pad = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_launchpads & "/" & pad)
