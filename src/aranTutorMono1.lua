mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("mo1") == "o" then  
	quest.update("mo2", "o")
	-- pi.mapSound("Aran/balloon");
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon2"))
end