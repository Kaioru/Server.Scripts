mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("chain") == "0" then
    quest.update("cmd", "o")
    --pi.message("You can use a Command Attack by pressing both the arrow key and the attack key after a Consecutive Attack.");
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide3"))
end