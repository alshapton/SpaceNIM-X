# This is a comment

import httpClient



proc info*(tout = 1): string =
    var client = newHttpClient()
    return client.getContent("https://api.spacexdata.com/v3/info")
    
proc api*(tout = 1): string = 
    var client = newHttpClient()
    return client.getContent("https://api.spacexdata.com/v3")
