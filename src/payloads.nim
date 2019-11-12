#[
Payload module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about payloads SpaceX has carried

This file is imported as a module and contains the following
functions:

    * payloads - returns all payload information
    * one - returns information about a specific payload

"""
]#

import urldata
import httpClient


proc payloads*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_payloads)

proc one*(payload_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_payloads & "/" & payload_id)
