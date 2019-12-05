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

when isMainModule:  #Preserve ability to `import info`/call from Nim
    import cligen
    dispatchMulti(["multi",doc="\nGeneral information about the SpaceX organisation and the API\n\n"],
                    [company,doc = "Information about the SpaceX company", help={"timeOut": "Timeout in seconds"}],
                    [api,doc = "Information about the API in use",help={"timeOut": "Timeout in seconds"}])


