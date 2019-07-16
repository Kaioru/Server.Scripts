local charConstants = {}

local messosFee = { 
	mapleToVictoria = 150,
}

local levelChecks = {
	mapleToVictoria = 7,
	firstJobAdvMagician = 8,
	firstJobAdvOther = 10,
}

function charConstants.getFeeValue(key)
    return messosFee[key]
end

function charConstants.getLvlCheckValue(key)
    return levelChecks[key]
end

return charConstants