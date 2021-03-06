local charConstants = {}

local messosFee = { 
	begginerTaxiFee = 100,
	mapleToVictoria = 150,
	nonBegginerTaxiFee = 1000,
}

local levelChecks = {
	noblesseMedal = 6,
	mapleToVictoria = 7,
	firstJobAdvMagician = 8,
	firstJobAdvOther = 10,
	secondJobAdv = 30,
	thirdJobAdv = 70,
	fourthJobAdv = 120,
	fifthJob = 200,
}

function charConstants.getFeeValue(key)
    return messosFee[key]
end

function charConstants.getLvlCheckValue(key)
    return levelChecks[key]
end

return charConstants