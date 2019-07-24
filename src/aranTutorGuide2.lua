mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("cmd") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide3"))
   --pi.message("You can use a Command Attack by pressing both the arrow key and the attack key after a Consecutive Attack.");
    quest.update("cmd", "o")
end