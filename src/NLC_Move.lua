contimove = target.as_continent(8)
inventory = target.as_inventory()

if contimove.state == 0x1 then
    -- TODO
    -- "The subway for NLC is getting ready for takeoff. I'm sorry, but you'll have to get on the next ride. The ride schedule is available through the usher at the ticketing booth."
    -- "I'm sorry, but this ride is FULL. We cannot accept any more passengers. Please get on the next ride."
    if self.ask_yes_no("It looks like there's plenty of room for this ride. Please have your ticket ready so I can let you in. The ride will be long, but you'll get to your destination just fine. What do you think? Do you want to get on this ride?") then
        ticket = target.level <= 10 and 4031712 or 4031713

        if inventory.item_count(ticket) > 0 then
            inventory.remove(ticket)
            target.field = contimove.wait_field
        else
            self.say("Oh no ... I don't think you have the ticket with you. I can't let you in without it. Please buy the ticket at the ticketing booth.")
        end
    else
        self.say("You must have some business to take care of here, right?")
    end
else 
    self.say("We will begin boarding " .. contimove.wait .. " minutes before the takeoff. Please be patient and wait for a few minutes. Be aware that the subway will take off right on time, and we stop receiving tickets 1 minute before that, so please make sure to be here on time.")
end