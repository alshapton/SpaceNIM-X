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
import utils


proc history*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_history,timeOut)

proc one*(event = 0, timeOut = 1): string = 
    return utils.makeRequest(urldata.main_history & "/" & $event,timeOut)


