inventory = target.as_inventory()

if target.field == 600010001 then
    selection = self.ask_menu("Hello. Would you like to buy a ticket for the subway?", {
        [0] = "Kerning City of Victoria Island"
    })

    if selection == 0 then
        ticket = target.level <= 10 and 4031712 or 4031713
        cost = target.level <= 10 and 1000 or 5000;

        if self.ask_yes_no("The ride to Kerning City of Victoria Island takes off every " .. target.as_continent().term .. " minutes, beginning on the hour, and it'll cost you #b" .. cost .. " mesos#k. Are you sure you want to purchase #b#t" .. ticket .. "##k?") then
            if target.money >= cost and inventory.has_slot_for(ticket) then
                target.money = target.money - cost
                inventory.add(ticket)
            else
                self.say("Are you sure you have #b" .. cost .. " mesos#k? If so, then I urge you to check your etc. inventory, and see if it's full or not.")
            end
        else
            self.say("You must have some business to take care of here, right?")
        end
    end
elseif target.field == 103000100 then
    selection = self.ask_menu("Hello, I'm in charge of selling tickets for the subway ride for some destination. Which ticket would you like to purchase?", {
        [0] = "New Leaf City of Masteria"
    })

    if selection == 0 then
        ticket = target.level <= 10 and 4031710 or 4031711
        cost = target.level <= 10 and 1000 or 5000

        if self.ask_yes_no("The ride to New Leaf City of Masteria takes off every " .. target.as_continent().term .. " minutes, beginning on the hour, and it'll cost you #b" .. cost .. " mesos#k. Are you sure you want to purchase #b#t" .. ticket .. "##k?") then
            if target.money >= cost and inventory.has_slot_for(ticket) then
                target.money = target.money - cost
                inventory.add(ticket)
            else
                self.say("Are you sure you have #b" .. cost .. " mesos#k? If so, then I urge you to check your etc. inventory, and see if it's full or not.")
            end
        else
            self.say("You must have some business to take care of here, right?")
        end
    end
elseif target.field == 600010002 then
    if self.ask_yes_no("Do you want to go back to New Leaf City subway station now?") then
        target.field = 600010001
    else
        self.say("Okay, Plase wait~!")
    end
elseif target.field == 600010004 then
    if self.ask_yes_no("Do you want to go back to Kerning City subway station now?") then
        target.field = 103000100
    else
        self.say("Okay, Plase wait~!")
    end
end