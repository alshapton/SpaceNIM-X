

import httpClient

proc makeRequest*(url = "", timeOut = 1): string = 
    var client = newHttpClient(timeout = timeOut * 1000)
    var spaceXdata = ""
    spaceXdata = client.getContent(url)
    return spaceXdata