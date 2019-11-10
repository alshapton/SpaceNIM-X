#[
Crew module


This is a module which allows wrapper access to the functions within
the SpaceX API to return information about the astronauts on SpaceX
missions

This file is imported as a module and contains the following
functions:

    * crew - returns all crew information

]#

import urldata
import httpClient


proc crew*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main & urldata.main_crew)

