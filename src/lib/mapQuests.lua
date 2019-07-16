local mapQuests = {}

local states = {
	None = 0x0,
	Perform = 0x1,
	Complete = 0x2,
	PartyQuest = 0x3,
	No = 0x4
}

local quests = { 
-- Adventurer Tutorial --
	Reactor1 = 1008,
	Reactor2 = 1020,
	RogersApple = 1021,
	Minimap = 1031,
	AttackPickUpSkill = 1035,
-- Other quests --
	FreeMarketQuest = 7600,
-- Aran Tutorial --
	MissingChild = 21000, --??
	AranTut = 21002,
-- Evan Tutorial --
	DragonEyes = 22012,
	EvanTut = 22013,
-- Edelstein quests --
	VitaEscape = 23007,
	HideAndSeek = 23999,
}

local questExpRewards = {
-- Maple Island quest rewards --
	RogersAppleFinish = 10,
-- Edelstein quests rewards --
	KidFound3 = 3,
	KidFound5 = 5,
	VitaEscapeBegin = 35,
	VitaEscapePart3 = 60,
	VitaEscapeFinish = 90
}

function mapQuests.getState(key)
    return states[key]
end

function mapQuests.getID(key)
    return quests[key]
end

function mapQuests.getQuestExpReward(key)
    return questExpRewards[key]
end

return mapQuests