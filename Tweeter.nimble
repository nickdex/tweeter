# Package

version       = "0.1.0"
author        = "Nikhil Warke"
description   = "Twitter clone"
license       = "MIT"
srcDir        = "src"
bin           = @["Tweeter"]

skipExt = @["nim"]


# Dependencies

requires "nim >= 1.0.0", "jester >= 0.0.1"
