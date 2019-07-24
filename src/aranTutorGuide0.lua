mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("normal") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide1"))
	-- P.ShowInfo('To use a Regular Attack on monsters, press the Ctrl key.');
    quest.update("normal", "o")
end