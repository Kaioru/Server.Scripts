if target.field == 110000000 or target.field >= 100000000 and target.field < 105040300 then
	-- TODO: questBeginnerExplorer = target.get_quest(29005) --Beginner Explorer	
elseif target.field >= 105040300 and target.field < 105090900 then
    -- TODO: questSleepywoodExplorer = target.get_quest(29014) --Sleepywood Explorer
elseif target.field >= 200000000 and target.field < 211041800 then 
	-- TODO: questElNathExplorer = target.get_quest(29006) --El Nath Mts. Explorer
elseif target.field >= 220000000 and target.field < 222010400 then
	-- TODO: questLudusLakeExplorer = target.get_quest(29007) --Ludus Lake Explorer
elseif target.field >= 230000000 and target.field < 230040401 then
	-- TODO: questUnderseaExplorer = target.get_quest(29008) --Undersea Explorer
elseif target.field >= 250000000 and target.field < 251010500 then
	-- TODO: questMuLungExplorer = target.get_quest(29009) --Mu Lung Explorer
elseif target.field >= 260000000 and target.field < 261030000 then
	-- TODO: questNihalDesertExplorer = target.get_quest(29010) --Nihal Desert Explorer
elseif target.field >= 240000000 and target.field < 240050000 then
	-- TODO: questMinarForestExplorer = target.get_quest(29011) --Minar Forest Explorer
end

if target.field == 104000000 then
	target.screen_field_effect("maplemap/enter/104000000")
end