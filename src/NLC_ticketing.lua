mapFields = require "lib/mapFields"

if target.field == mapFields.getID("NLCSubwayStation") then
    selection = self.ask_menu("Hello. Would you like to buy a ticket for the subway?", {
        [0] = "Kerning City of Victoria Island"
    })

    if selection == 0 then
		ticket = charInventory.selectTicketToVictoriaFromNLC()
		cost = charInventory.getPriceOfTicket(ticket)

        if self.ask_yes_no("The ride to Kerning City of Victoria Island takes off every " .. target.as_continent().term .. " minutes, beginning on the hour, and it'll cost you #b" .. cost .. " mesos#k. Are you sure you want to purchase #b#t" .. ticket .. "##k?") then	         
			charInventory.buyTicket(ticket, cost)
        else
            self.say("You must have some business to take care of here, right?")
        end
    end
elseif target.field == mapFields.getID("SubwayTicketingBooth") then
    selection = self.ask_menu("Hello, I'm in charge of selling tickets for the subway ride for some destination. Which ticket would you like to purchase?", {
        [0] = "New Leaf City of Masteria"
    })

    if selection == 0 then
        ticket = charInventory.selectTicketToNLCFromVictoria()
        cost = charInventory.getPriceOfTicket(ticket)

        if self.ask_yes_no("The ride to New Leaf City of Masteria takes off every " .. target.get_continent().term .. " minutes, beginning on the hour, and it'll cost you #b" .. cost .. " mesos#k. Are you sure you want to purchase #b#t" .. ticket .. "##k?") then  
			charInventory.buyTicket(ticket, cost)
        else
            self.say("You must have some business to take care of here, right?")
        end
    end
else
    local to = target.field == mapFields.getID("WaitingRoomFromNLCtoKC") and "New Leaf City" or "Kerning City"
    
    if self.ask_yes_no("Do you want to go back to " .. to .. " subway station now?") then
        target.field = target.get_continent().start_ship_move_field
    else
        self.say("Okay, Plase wait~!")
    end
end