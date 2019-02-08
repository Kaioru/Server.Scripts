contimove = target.as_continent(0)

if self.ask_yes_no("We're just about to take off. Are you sure you want to get off the ship? You may do so, but then you'll have to wait until the next available flight. Do you still wish to get off board?") then
    target.field = contimove.start_ship_move_field
else
    self.say("You'll get to your destination in a short while. Talk to other passengers and share your stories to them, and you'll be there before you know it.")
end