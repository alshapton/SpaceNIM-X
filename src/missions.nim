#[
Missions module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about SpaceX missions

This file is imported as a module and contains the following
functions:

    * missions - returns all mission information
    * one - returns information about a specific mission

"""
]#

import urldata
import httpClient


proc missions*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_missions)

proc one*(mission_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_missions & "/" & mission_id)
