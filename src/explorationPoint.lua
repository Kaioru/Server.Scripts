mapFields = require("lib/mapFields")
mapEffects = require("lib/mapEffects")

if target.field >= mapFields.getID("Henesys") and target.field < mapFields.getID("Sleepywood") then
	-- TODO: questBeginnerExplorer = target.get_quest(29005) --Beginner Explorer	
elseif target.field >= mapFields.getID("Sleepywood") and target.field <= mapFields.getID("BalrogsDisappearanceSite") then
    -- TODO: questSleepywoodExplorer = target.get_quest(29014) --Sleepywood Explorer
elseif target.field >= mapFields.getID("Orbis") and target.field <= mapFields.getID("IcyColdField") then 
	-- TODO: questElNathExplorer = target.get_quest(29006) --El Nath Mts. Explorer
elseif target.field >= mapFields.getID("Ludibrium") and target.field <= mapFields.getID("DogonsHQ") then
	-- TODO: questLudusLakeExplorer = target.get_quest(29007) --Ludus Lake Explorer
elseif target.field >= mapFields.getID("Aquarium") and target.field <= mapFields.getID("TheCaveOfPianus") then
	-- TODO: questUnderseaExplorer = target.get_quest(29008) --Undersea Explorer
elseif target.field >= mapFields.getID("MuLung") and target.field <= mapFields.getID("IsolatedSwamp") then
	-- TODO: questMuLungExplorer = target.get_quest(29009) --Mu Lung Explorer
elseif target.field >= mapFields.getID("Ariant") and target.field <= mapFields.getID("BlackMagiciansLab") then
	-- TODO: questNihalDesertExplorer = target.get_quest(29010) --Nihal Desert Explorer
elseif target.field >= mapFields.getID("Leafre") and target.field <= mapFields.getID("CrimsonSkyNest") then
	-- TODO: questMinarForestExplorer = target.get_quest(29011) --Minar Forest Explorer
end

if target.field == mapFields.getID("LithHarbor") then
	target.direction_mode = false
	target.screen_field_effect(mapEffects.getScreenFieldEffect("enter104000000"))
end