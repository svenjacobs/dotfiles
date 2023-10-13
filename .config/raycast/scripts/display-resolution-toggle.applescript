#!/usr/bin/osascript

# @raycast.schemaVersion 1
# @raycast.title Toggle Display Resolution
# @raycast.mode silent
# @raycast.packageName Display
# @raycast.icon 🖥

tell application "Display Menu"
    set theResolution to current resolution on display "LG HDR 4K"

    if (theResolution = "3008 x 1692 60.0 Hz Retina") then
        select resolution "1920 x 1080 60.0 Hz Retina" on display "LG HDR 4K"
    else
        select resolution "3008 x 1692 60.0 Hz Retina" on display "LG HDR 4K"
    end if
end tell
