# Package

version       = "0.1.0"
author        = "Andrew Shapton"
description   = "A Nim wrapper for the SpaceX API"
license       = "MIT"
srcDir        = "src"
binDir        = "build"
bin           = @["SpaceNIMX"]



# Dependencies

requires "nim >= 1.0.2"

when defined(nimdistros):
  import distros
  if detectOs(Ubuntu):
    foreignDep "libssl-dev"
  else:
    foreignDep "openssl"