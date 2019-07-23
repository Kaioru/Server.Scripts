worldContimove = require "lib/worldContimove"
contimove = target.get_continent()

if contimove == nil then
    self.say("It looks like the flight is not in operation yet..")
    return
end

if contimove.state == worldContimove.getState("Wait") then
    if self.ask_yes_no("This will not be a short flight, so you need to take care of some things, I suggest you do that first before getting on board. Do you still wish to board the ship?") then
        target.field = contimove.wait_field
    else
        self.say("You must have some business to take care of here, right?")
    end
elseif contimove.state == worldContimove.getState("Start")
	self.say("This ship is getting ready for takeoff. I'm sorry, but you'll have to get on the next ride. The ride schedule is available through the guide at the ticketing booth.")
elseif contimove.state == worldContimove.getState("Move")
	self.say("I'm sorry, but this ride is FULL. We cannot accept any more passengers. Please get on the next ride.")
else 
    self.say("We will begin boarding " .. contimove.wait .. " minutes before the takeoff. Please be patient and wait for a few minutes. Be aware that the ship will take off right on time, and we stop boarding 1 minute before that, so please make sure to be here on time.")
end