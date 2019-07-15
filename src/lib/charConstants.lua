local charConstants = {}

local messosFee = { 
	MapleToVictoriaFee = 150
}

local levelChecks = {
	MapleToVictoriaLvlCheck = 7
}

function charConstants.getFeeValue(key)
    return messosFee[key]
end

function charConstants.getLvlCheckValue(key)
    return levelChecks[key]
end

return charConstants