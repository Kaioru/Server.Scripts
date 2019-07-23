worldContimove = require "lib/worldContimove"
charInventory = require "lib/charInventory"

contimove = target.get_continent()

if contimove.state == worldContimove.getState("Wait") then
    if self.ask_yes_no("It looks like there's plenty of room for this ride. Please have your ticket ready so I can let you in. The ride will be long, but you'll get to your destination just fine. What do you think? Do you want to get on this ride?") then
        if charInventory.hasNLCTicket() then
            charInventory.removeNLCTicket()
            target.field = contimove.wait_field
        else
            self.say("Oh no ... I don't think you have the ticket with you. I can't let you in without it. Please buy the ticket at the ticketing booth.")
        end
    else
        self.say("You must have some business to take care of here, right?")
    end
elseif contimove.state == worldContimove.getState("Start")
	self.say("The subway for NLC is getting ready for takeoff. I'm sorry, but you'll have to get on the next ride. The ride schedule is available through the usher at the ticketing booth.")
elseif contimove.state == worldContimove.getState("Move")
	self.say("I'm sorry, but this ride is FULL. We cannot accept any more passengers. Please get on the next ride.")
else 
    self.say("We will begin boarding " .. contimove.wait .. " minutes before the takeoff. Please be patient and wait for a few minutes. Be aware that the subway will take off right on time, and we stop receiving tickets 1 minute before that, so please make sure to be here on time.")
end