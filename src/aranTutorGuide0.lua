mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("normal") == "" then
    quest.update("normal", "o")
	--P.ShowInfo('To use a Regular Attack on monsters, press the Ctrl key.');
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide1"))
end