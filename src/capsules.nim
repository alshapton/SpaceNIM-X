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
import httpClient

proc capsules*(tout = 1): string =
    var client = newHttpClient()
    return client.getContent(urldata.main & urldata.main_capsules)
    
proc upcoming*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main & urldata.upcoming_capsules)

proc past*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main & urldata.past_capsules)

proc one*(capsule_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main & urldata.main_capsules & "/" & capsule_id)

