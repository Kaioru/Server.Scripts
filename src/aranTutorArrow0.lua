mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("arr0") == "" then
    quest.update("arr0", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow3"))
end