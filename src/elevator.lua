worldContimove = require "lib/worldContimove"
contimove = target.get_continent()

if contimove.state == worldContimove.getState("Wait") then
    target.field = contimove.wait_field
else
    target.message("The elevator is not available for the riding at this time. Please try againt later.")
end