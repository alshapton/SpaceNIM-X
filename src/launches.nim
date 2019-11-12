#[
Launches module

This is a module which allows wrapper access to data about
all SpaceX launches - both past and (as far as is known) in
the future

This file is imported as a module and contains the following
functions:

    * alllaunches - returns all launch information
    * latest - returns information about the latest launches
    * nextlaunch - returns information about the next launch
    * upcoming - returns information about the future launches
    * past - returns information about previous launches
    * one - returns information about a specific launch

]#

import urldata
import httpClient

proc alllaunches*(tout = 1): string =
    var client = newHttpClient()
    return client.getContent(urldata.main_launches)
    
proc latest*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.upcoming_launches)

proc nextlaunch*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.next_launches)

proc upcoming*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.upcoming_launches)

proc past*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.past_launches)

proc one*(launch_id = "", tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_launches & "/" & launch_id)

