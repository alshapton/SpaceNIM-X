#[
Roadster module

This is a module which allows wrapper access to information about Elon
Musk's Tesla Model 3 Roadster which is now an artificial satellite of
the Sun.

This file is imported as a module and contains the following
function:

    * roadster - returns all roadster information

]#

import urldata
import httpClient


proc roadster*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main_roadster)
