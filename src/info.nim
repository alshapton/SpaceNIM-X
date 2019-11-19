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
import utils


proc company*(timeOut = 1): string =
    return utils.makeRequest(urldata.main_info, timeOut)

proc api*(timeOut = 1): string =
    return utils.makeRequest(urldata.main, timeOut)
