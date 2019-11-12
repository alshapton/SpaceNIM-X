#[
Info module

This is a module which allows wrapper access to the technical detail
of SpaceX, together with information about the API and applications
using it

This file is imported as a module and contains the following
functions:

    * company - returns company information
    * api - returns information the API version and endpoints etc

]#

import urldata
import httpClient

proc company*(tout = 1): string =
    var client = newHttpClient()
    return client.getContent(urldata.main_info)
    
proc api*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent(urldata.main)
