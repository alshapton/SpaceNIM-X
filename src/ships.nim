#[
Ships module

This is a module which allows wrapper access to the functions within
the SpaceX API to return information about SpaceX fleet of ships.
This includes support and recovery vessels as well as the drone ships

This file is imported as a module and contains the following
functions:

    * ships - returns all ship information
    * one - returns information about a specific ship

    * ocisly - returns information about the drone ship "Of Course I Still Love You"
    * jrti1 - returns information about the drone ship "Just Read The Instructions" (iteration 1)
    * jrti2 - returns information about the drone ship "Just Read The Instructions" (iteration 2)
    * asog - returns information about the drone ship "A Shortfall Of Gravitas"
]#

import urldata
import utils


proc ships*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships, timeOut)

proc one*(ship_id = "", timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships& "/" & ship_id, timeOut)

proc ocisly*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships & "/" & "OCISLY", timeOut)

proc jrti1*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships & "/" & "JRTI-1", timeOut)

proc jrti2*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships & "/" & "JRTI-2", timeOut)

proc asog*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_ships & "/" & "ASOG", timeOut)
