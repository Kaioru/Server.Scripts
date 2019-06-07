-- TODO: Only execute once
-- TODO: Check highest level in account >30
speaker = self.as_speaker(2007)

target.direction_mode = false
if speaker.ask_yes_no("Would you like to skip the tutorials and head straight to Lith Harbor?") then
    target.field = 104000000
else
    speaker.say("Enjoy your trip.")
end