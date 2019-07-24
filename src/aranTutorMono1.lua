mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("mo2") == "" then  
	quest.update_ex("mo2", "o")
	-- pi.mapSound("Aran/balloon");
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon2"))
end