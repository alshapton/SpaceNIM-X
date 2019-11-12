#[
urldata module

This is a module defines the endpoints for the REST SpaceX API
as well as some global data

]#

 # Base URL from which to assemble request URLs 
var base* = "https://api.spacexdata.com"

# API Version #
var version* = "v3"
var main* = base & "/" & version & "/"

# Declaration of the endpoints

# Capsule Information 
var main_capsules* = "capsules"
var upcoming_capsules* = main & main_capsules & "/upcoming"
var past_capsules* = main & main_capsules & "/past"

# Company/API information 
var main_info* = main & "info"
var main_api* = ""

# Cores Information 
var main_cores* = "cores"
var upcoming_cores* = main & main_cores & "/upcoming"
var past_cores* = main & main_cores & "/past"

# Crew Information 
var main_crew* = main & "crew"

# Dragons Information 
var main_dragons* = main & "dragons"

# History Information
var main_history* = main & "history"

# Landing Pads Information
var main_landingpads* = "landpads"

# Launches Information 
var main_launches* = "launches"
var latest_launches* = main & main_launches & "/latest"
var next_launches* = main & main_launches & "/next"
var upcoming_launches* = main & main_launches & "/upcoming"
var past_launches* = main & main_launches & "/past"

# Launch Pads Information 
var main_launchpads* = "launchpads"

# Rocket information #
var main_rockets* = "rockets"
var falcon1* = main & main_rockets & "/falcon1"
var falcon9* = main & main_rockets & "/falcon9"
var falconheavy* = main & main_rockets & "/falconheavy"
var starship* = main & main_rockets & "/starship"

