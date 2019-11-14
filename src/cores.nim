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
import httpClient

proc cores*(tout = 1): string =
    var client = newHttpClient()
    return client.getContent(urldata.main_cores)
    
proc upcoming*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.upcoming_cores)

proc past*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.past_cores)

proc one*(core_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_cores & "/" & core_id)

