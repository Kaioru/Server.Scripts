local mapQuests = {}

local quests = { 
-- Aran Tutorial --
	MissingChild = 21000 --??
	AranTut = 21002
-- Edelstein quests --
	VitaEscape = 23007,
	HideAndSeek = 23999
-- Other quests --
	FreeMarketQuest = 7600
}

local questExpRewards = {
-- Edelstein quests exp rewards --
	KidFound3 = 3,
	KidFound5 = 5,
	VitaEscapePart3 = 60,
	VitaEscapeFinish = 90
}

function mapQuests.getID(key)
    return quests[key]
end

function mapQuests.getQuestExpReward(key)
    return questExpRewards[key]
end

return mapQuests