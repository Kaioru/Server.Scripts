mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("arr0") == "o" then
    quest.update("arr1", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow1"))
end