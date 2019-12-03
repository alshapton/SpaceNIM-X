

import httpClient
import json

proc JSONParameters(parameters = ""): string =
    if parameters == "":
        return parameters
    else:
        let PJSON = parseJson(parameters)
        let JSONLength = len(PJSON) - 1
        echo JSONLength
        for i in 0 .. JSONLength:
            let JSONNode = PJSON
            echo JSONNode
            for key, value in JSONNode:
                let p = "?" & $key & "=" & $value
                echo p
    return parameters

proc makeRequest*(url = "", timeOut = 1): string = 
    var client = newHttpClient(timeout = timeOut * 1000)
    var spaceXdata = ""
    let parameters ="{\"key384\":\"value8746473\",\"key384\":\"value8746473\"}"
    echo parameters
    let jParams=JSONParameters(parameters)
    echo jParams
    spaceXdata = client.getContent(url)
    return spaceXdata

