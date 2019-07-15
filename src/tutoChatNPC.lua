-- TODO: Only execute once
-- TODO: Check highest level in account > 30
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdministrator"))
target.direction_mode = false

if mapleAdmin.ask_yes_no("Would you like to skip the tutorials and head straight to Lith Harbor?") then
   target.field = mapFields.getID("LithHarbor")
else
    mapleAdmin.say("Enjoy your trip.")
end