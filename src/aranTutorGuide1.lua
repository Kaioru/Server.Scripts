mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("chain") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide2"))
	-- TODO: target.message("You can use Consecutive Attacks by pressing the Ctrl key multiple times.")
	quest.update_ex("chain", "o")
end