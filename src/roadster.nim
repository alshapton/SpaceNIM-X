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
import utils

proc roadster*(timeOut = 1): string = 
    return utils.makeRequest(urldata.main_roadster, timeOut)

