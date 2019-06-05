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


return charInventory