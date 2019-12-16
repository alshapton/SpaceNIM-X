##[
Info module

This is a module which allows wrapper access to the technical detail
of SpaceX, together with information about the API
using it

This file is imported as a module and contains the following
functions:

    * company - returns company information
    * api - returns information the API version and endpoints etc

]##

import urldata
import utils


proc company*(timeOut = 1): string =
    # Provides information about the SpaceX company
    #
    # * Parameter: timeOut         timeout in seconds (default: 1 sec)
    return utils.makeRequest(urldata.main_info, timeOut)

proc api*(timeOut = 1): string =
    # Provides information about the SpaceX API in use
    #
    # * Parameter: timeOut         timeout in seconds (default: 1 sec)
    return utils.makeRequest(urldata.main, timeOut)
