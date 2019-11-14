#[
History module

This is a module which allows wrapper access to the history of SpaceX;
specifically events which have occurred in the company's timeline

This file is imported as a module and contains the following
functions:

    * history - returns all history information
    * one - returns information about a specific event

]#

import urldata
import httpClient


proc history*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_history)

proc one*(event = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_history & "/" & event)
