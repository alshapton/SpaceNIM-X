import capsules
import cores
import crew
import dragons
import history
import info
import landingpads
import launches
import launchpads
import missions
import payloads
import roadster
import rockets
import ships


when isMainModule:  #Preserve ability to `import info`/call from Nim
    import cligen
    dispatchMulti(["multi",doc="\nGeneral information about the SpaceX organisation and the API\n\n"],
                    [company,doc = "Information about the SpaceX company", help={"timeOut": "Timeout in seconds"}],
                    [allcapsules,doc = "Details of the SpaceX capsules", help={"timeOut": "Timeout in seconds"}],
                    [upcomingcapsules,doc = "Upcoming capsules that SpaceX will launch", help={"timeOut": "Timeout in seconds"}],
                    [pastcapsules,doc = "Previous capsules SpaceX has launched", help={"timeOut": "Timeout in seconds"}],
                    [capsule,doc = "One capsule.....", help={"capsule_serial":"Serial# of the requested capsule","timeOut": "Timeout in seconds"}],
                    [ship,doc = "Details a single SpaceX ship", help={"ship_id":"ID of the requested ship e.g. GONAVIGATOR","timeOut": "Timeout in seconds"}],
                    [ocisly,doc = "Information about the ship 'Of Course I Still Love You'", help={"timeOut": "Timeout in seconds"}],
                    [jrti1,doc = "Data about the ship 'Just Read The Instructions #1'", help={"timeOut": "Timeout in seconds"}],
                    [jrti2,doc = "Details of the autonomous drone ship 'Just Read The Instructions #2'", help={"timeOut": "Timeout in seconds"}],
                    [asog,doc = "Information about the ship 'A Shortfall of Gravitas'", help={"timeOut": "Timeout in seconds"}],
                    [api,doc = "Information about the API in use",help={"timeOut": "Timeout in seconds"}])

