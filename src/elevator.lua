contimove = target.get_continent()

if contimove.state == 0x1 then
    target.field = contimove.wait_field
else
    target.message("The elevator is not available for the riding at this time. Please try again later.")
end
