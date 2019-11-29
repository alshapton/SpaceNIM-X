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
import utils


proc payloads*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_payloads, timeOut)

proc one*(payload_id = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_payloads & "/" & payload_id, timeOut)
