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
var main_capsules* = main & "capsules"
var upcoming_capsules* = main_capsules & "/upcoming"
var past_capsules* =  main_capsules & "/past"

# Company/API information 
var main_info* = main & "info"
var main_api* = ""

# Cores Information 
var main_cores* = main & "cores"
var upcoming_cores* = main_cores & "/upcoming"
var past_cores* = main_cores & "/past"

# Crew Information 
var main_crew* = main & "crew"

# Dragons Information 
var main_dragons* = main & "dragons"

# History Information
var main_history* = main & "history"

# Landing Pads Information
var main_landingpads* = main & "landpads"

# Launches Information 
var main_launches* = main & "launches"
var latest_launches* = main_launches & "/latest"
var next_launches* = main_launches & "/next"
var upcoming_launches* = main_launches & "/upcoming"
var past_launches* = main_launches & "/past"

# Launch Pads Information 
var main_launchpads* = main & "launchpads"

# Mission Information 
var main_missions* = main & "missions"

# Payload Information 
var main_payloads* = main & "payloads"

# Roadster Information 
var main_roadster* = main & "roadster"

# Rocket information #
var main_rockets* = main & "rockets"
var falcon1* = main_rockets & "/falcon1"
var falcon9* = main_rockets & "/falcon9"
var falconheavy* = main_rockets & "/falconheavy"
var starship* = main_rockets & "/starship"

# Ships Information
var main_ships* = main & "ships"



