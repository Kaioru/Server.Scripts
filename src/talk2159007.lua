npcSpeakers = require "lib/npcSpeakers"
mapEffects = require "lib/mapEffects"
mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"

vita2 = self.as_speaker(npcSpeakers.getID("Vita2"))
quest = target.get_quest(mapQuests.getID("VitaEscape"))
  
if quest.record_key("vel01") != "2" then
	self.say ({
		target.get_speech("Whoa. Wh-what happened? The glass is broken... Did that vibration earlier break it?"),
		target.get_speech("Now, there's nothing stopping you right? Let's get out of here!"),
		vita2.get_speech("But..."),
		target.get_speech("Do you WANT to stay here or something?"),
		vita2.get_speech("Of course not!"),
		target.get_speech("Then hurry up! Let's go!")
	})

	quest.update("vel00", "2")
	quest.update("vel01", "2")
	target.transfer_field(mapFields.getID("NeglectedRockyMountain3"), 1)
elseif quest.record_key("vel01") == "2" then
	self.say ({
		vita2.get_speech("It's been...a really long time since I've been outside the laboratory. Where are we?"),
		target.get_speech("This is the road that leads to Edelstein, where I live! Let's get out of here before the Black Wings follow us.")
	})

	quest.update("vel00", "2")
	quest.update("vel01", "3")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow1"))
else
	self.say("It's been...a really long time since I've been outside the laboratory.")
end