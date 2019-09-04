mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("MissingChild"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdmin"))

if quest.state == mapQuests.getState("Perform") then
	target.modify_skill(20000017, 0, -1)
	target.modify_skill(20000017, 1, 0)
	target.modify_skill(20000018, 0, -1)
	target.modify_skill(20000018, 1, 0)
	target.play_portal_sound_effect()
	target.transfer_field(mapFields.getID("BurningForest1"), "sp")
else
    mapleAdmin.say("You can only exit after you accept the quest from Athena Pierce, who is to your right.")
end