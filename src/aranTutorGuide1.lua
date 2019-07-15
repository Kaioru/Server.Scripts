mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("normal") == "" then
    quest.update("chain", "o")
	--pi.message("You can use Consecutive Attacks by pressing the Ctrl key multiple times.");
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide2"))
end