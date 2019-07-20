local charInventory = {}

local inventory = target.get_inventory()
local EQP = 0x1
local USE = 0x2
local INS = 0x3
local ETC = 0x4
local CSH = 0x5 

-- return number of EQP slots
function charInventory.getEQPslotCount()
	return inventory.get_inventory_limit(EQP)
end

-- return number of USE slots
function charInventory.getUSEslotCount()
	return inventory.get_inventory_limit(USE)
end

-- return number of INS slots
function charInventory.getINSslotCount()
	return inventory.get_inventory_limit(INS)
end

-- return number of ETC slots
function charInventory.getETCslotCount()
	return inventory.get_inventory_limit(ETC)
end

-- return number of CSH slots
function charInventory.getCSHslotCount()
	return inventory.get_inventory_limit(CSH)
end

-- increaseEQPslots by n
function charInventory.increaseEQPslots(n)
	inventory.set_inventory_limit(EQP, charInventory.getEQPslotCount() + n)
end

-- increaseUSEslots by n
function charInventory.increaseUSEslots(n)
	inventory.set_inventory_limit(USE, charInventory.getUSEslotCount() + n)
end

-- increaseINSslots by n
function charInventory.increaseINSslots(n)
	inventory.set_inventory_limit(INS, charInventory.getINSslotCount() + n)
end

-- increaseUSEslots by n
function charInventory.increaseETCslots(n)
	inventory.set_inventory_limit(ETC, charInventory.getETCslotCount() + n)
end

-- increaseCSHslots by n
function charInventory.increaseCSHslots(n)
	inventory.set_inventory_limit(CSH, charInventory.getCSHslotCount() + n)
end

function charInventory.giveRogersApple()
	if inventory.item_count(2010007) < 1 then
		inventory.add(2010007, 1)
	end
end

function charInventory.giveRogersReward()
	inventory.add(2000000, 3)
	inventory.add(2010009, 3)
end

function charInventory.hasRecommendationLetter()
	if inventory.item_count(4031801) > 0 then -- Lucas's Recommendation Letter
		return true;
	end
	return false;
end

function charInventory.removeRecommendationLetter()
	inventory.remove(4031801, 1)
end

function charInventory.hasMagicSeed()
	if inventory.item_count(4031346) > 0 then -- Magic Seed
		return true;
	end
	return false;
end

function charInventory.removeMagicSeed()
	inventory.remove(4031346, 1)
end

function charInventory.giveBowman1stJobItems()
	inventory.add(1452051, 1)    -- Give beginner bow
	inventory.add(2060000, 6000) -- Give arrrows
end

function charInventory.givePirate1stJobItems()
	inventory.add(1482014, 1)   -- Scallywag Knuckler	
	inventory.add(1492014, 1)   -- Pirate's Pistol
	inventory.add(2330006, 600) -- Bullet for Novice Pirates
	inventory.add(2330006, 600) -- Bullet for Novice Pirates
end

function charInventory.giveWarrior1stJobItems()
    inventory.add(1302077, 1)   -- Give beginner warrior's sword
end

function charInventory.giveMagician1stJobItems()
	inventory.add(1372043, 1)	-- Beginner Magician's wand
end

function charInventory.giveRogue1stJobItems()
	inventory.add(1472061, 1)	 -- Beginners Garnier
	inventory.add(1332063, 1)    -- Beginner Thief's short sword
	inventory.add(2070015, 1000) -- Special Subis
	inventory.add(2070015, 1000) -- Special Subis
end

function charInventory.giveRewardJ()
	inventory.add(2000000, 3) -- Red Potion	
	inventory.add(2000003, 3) -- Blue Potion
end

function charInventory.giveBattleMage1stJobItems()
	inventory.add(1382100, 1) -- ??
	inventory.add(1142242, 1) -- ??
end

------------------------------
-- Adventurer medals follow --
------------------------------
function charInventory.awardBeginnerAdventurerMedal()
	if inventory.item_count(1142107) < 1 then
		inventory.add(1142107, 1) --  <Beginner Adventurer> 
	end
end

function charInventory.awardJuniorAdventurerMedal()
	if inventory.item_count(1142108) < 1 then
		inventory.add(1142108, 1) --  <Junior Adventurer> 
	end
end

function charInventory.awardVeteranAdventurerMedal()
	if inventory.item_count(1142109) < 1 then
		inventory.add(1142109, 1) --  <Veteran Adventurer> 
	end
end

function charInventory.awardMasterAdventurerMedal()
	if inventory.item_count(1142110) < 1 then
		inventory.add(1142110, 1) --  <Master Adventurer> 
	end
end

------------------------------
--    KoC medals follow     --
------------------------------
function charInventory.awardNoblesseMedal()
	if inventory.item_count(1142065) < 1 then
		inventory.add(1142065, 1) --  <Noblesse> 
	end
end

function charInventory.awardTrainingKnightMedal()
	if inventory.item_count(1142066) < 1 then
		inventory.add(1142066, 1) --  <Training Knight> 
	end
end

function charInventory.awardOfficialKnightMedal()
	if inventory.item_count(1142067) < 1 then
		inventory.add(1142067, 1) --  <Official Knight> 
	end
end

function charInventory.awardAdvancedKnightMedal()
	if inventory.item_count(1142068) < 1 then
		inventory.add(1142068, 1) --  <Advanced Knight> 
	end
end

function charInventory.awardCaptainKnightMedal()
	if inventory.item_count(1142069) < 1 then
		inventory.add(1142069, 1) --  <Captain Knight> 
	end
end

------------------------------
--    Aran medals follow    --
------------------------------
function charInventory.awardAwakenedAranMedal()
	if inventory.item_count(1142129) < 1 then
		inventory.add(1142129, 1) --  <Awakened Aran> 
	end
end

function charInventory.awardAranInMemoryMedal()
	if inventory.item_count(1142130) < 1 then
		inventory.add(1142130, 1) --  <Aran in Memory> 
	end
end

function charInventory.awardAranInMiseryMedal()
	if inventory.item_count(1142131) < 1 then
		inventory.add(1142131, 1) --  <Aran in Misery> 
	end
end

function charInventory.awardAranInHopeMedal()
	if inventory.item_count(1142132) < 1 then
		inventory.add(1142132, 1) --  <Aran in Hope> 
	end
end

function charInventory.awardAranTheHeroMedal()
	if inventory.item_count(1142133) < 1 then
		inventory.add(1142133, 1) --  <Aran the Hero> lvl 200
	end
end

--------------------------------
--  Resistance medals follow  --
--------------------------------
function charInventory.awardSpecialTrainingBeginnerMedal()
	if inventory.item_count(1142242) < 1 then
		inventory.add(1142242, 1) --  <Special Training Beginner> 
	end
end

function charInventory.awardSpecialTrainingIntermediateyMedal()
	if inventory.item_count(1142243) < 1 then
		inventory.add(1142243, 1) --  <Special Training Intermediate> 
	end
end

function charInventory.awardSpecialTrainingGraduateMedal()
	if inventory.item_count(1142244) < 1 then
		inventory.add(1142244, 1) --  <Special Training Graduate> 
	end
end

function charInventory.awardSpecialTrainingSuperiorMedal()
	if inventory.item_count(1142245) < 1 then
		inventory.add(1142245, 1) --  <Special Training Superior> 
	end
end

function charInventory.awardSpecialTrainingMasterMedal()
	if inventory.item_count(1142246) < 1 then
		inventory.add(1142246, 1) --  <Special Training Master> lvl 200
	end
end

--[[
1142112 // Victoria Explorer
1142113 // El Nath Explorer
1142114 // Ludus Lake Explorer
1142115 // Undersea Explorer
1142116 // Mu Lung Explorer
1142117 // Nihal Desert Explorer
1142118 // Minar Forest Explorer
1142119 // Ossyria Explorer
1142120 // Maple Explorer
1142127 // Beginner Explorer
1142128 // Sleepywood Explorer
]]--

return charInventory