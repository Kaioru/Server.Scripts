mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("MissingChild"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdministrator"))

if quest.state == mapQuests.getState("Perform") then
	-- TODO: add skills, enable actions
	--pi.teachSkill(20000017, 0, -1, -1);
	--pi.teachSkill(20000018, 0, -1, -1);
	--pi.teachSkill(20000017, 1, 0, -1);
	--pi.teachSkill(20000018, 1, 0, -1);

	target.play_portal_sound_effect()
	target.transfer_field(mapFields.getID("BurningForest1"), 1)
else
    mapleAdmin.say("You can only exit after you accept the quest from Athena Pierce, who is to your right.")
end