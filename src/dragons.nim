#[
Dragons module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the dragon craft

This file is imported as a module and contains the following
functions:

    * dragon - returns all dragon information
    * one - returns information about a specific dragon craft

]#

import urldata
import httpClient


proc dragons*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_dragons)

proc one*(dragon_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_dragons & "/" & dragon_id)
