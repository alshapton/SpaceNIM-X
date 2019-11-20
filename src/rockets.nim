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
import httpClient


proc all*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_rockets)

proc rocket*(rocket_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_rockets & "/" & rocket_id)

proc falcon1*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.falcon1)

proc falcon9*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.falcon9)

proc falconheavy*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.falconheavy)

proc starship*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.starship)



