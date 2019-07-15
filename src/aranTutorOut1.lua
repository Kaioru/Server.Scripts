mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("MissingChild"))
speaker = self.as_speaker(0x1)

if quest.state == 0x1 then
	target.play_portal_sound_effect()
	target.transfer_field(mapFields.getID("BurningForest1"), 1)
else
    speaker.say("You can only exit after you accept the quest from Athena Pierce, who is to your right.")