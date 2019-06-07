local charJob = {}

local job = target.job

local privilegedUsers = {manager = 800, gm = 900, superGM = 910}

local citizen = 3000
local mechanics = {mechanic1 = 3500, mechanic2 = 3510, mechanic3 = 3511, mechanic4 = 3512}
local wildHunters = {wildHunter1 = 3300, wildHunter2 = 3310, wildHunter3 = 3311, wildHunter4 = 3312}
local battleMages = {battleMages1 = 3200, battleMages2 = 3210, battleMages3 = 3211, battleMages4 = 3212}
local jobsResistance = {citizen, mechanics, wildHunters, battleMages}

local beginner = 0

local warrior = 100
local fighters = {fighter = 110, crusader = 111, hero = 112}
local pages = {page = 120, whiteKnight = 121, palading = 122}
local spearmans = {spearman = 130, dragonKnight = 131, darkKnight = 131}
local warriors = {warrior, fighters, pages, spearmans}

local magician = 200
local fpWizards = {fpWizard = 210, fpMage = 211, fpArchmage = 212}
local ilWizards = {ilWizard = 211, ilMage = 221, ilArchmage = 222}
local clerics = {cleric = 230, priest = 231, bishop = 232}
local magicans = {magician, fpWizards, ilWizards, clerics}

local bowman = 300
local hunters = {hunter = 310, ranger = 311, bowMaster = 312}
local crossbowmans = {crossbowman = 320, sniper = 321, marksman = 322}
local bowmans = {hunters, crossbowmans}

local thief = 300
local assasins = {assasin = 410, hermit = 411, nighLord = 412}
local bandits = {bandit = 420, chiefBandit = 421, shadower = 422}
local thieves = {assasins, bandits}

local pirate = 500
local brawlers = {brawler = 510, marauder = 511, buccaneer = 512}
local gunslingers = {gunslinger = 520, outlaw = 521, corsair = 522}
local pirates = {brawlers, gunslingers}
local jobsExplorers = {warriors, magicans, bowmans, thieves, pirates}

local noblesse = 1000
local dawnWarriors = {dawnWarrior1 = 1100, dawnWarrior2 = 1110, dawnWarrior3 = 1111, dawnWarrior4 = 1112}
local blazeWizards = {blazeWizard1 = 1200, blazeWizard2 = 1210, blazeWizard3 = 1211, blazeWizard4 = 1212}
local windArchers = {windArcher1 = 1300, windArcher2 = 1310, windArcher3 = 1311, windArcher4 = 1312}
local nightWalkers = {nightWalker1 = 1400, nightWalker2 = 1410, nightWalker3 = 1411, nightWalker4 = 1412}
local thunderBreakers = {thunderBreaker1 = 1500, thunderBreaker2 = 1510,thunderBreaker3 = 1511, thunderBreaker4 = 1512}
local jobsKnightsOfCygnus = {noblesse, dawnWarriors, blazeWizards, windArchers, nightWalkers, thunderBreakers}

local arans = {aran1 = 2100, aran2 = 2110, aran3 = 2111, aran4 = 2112}
local evans = {evan1 = 2200, evan2 = 2210, evan3 = 2211, evan4 = 2212, evan5 = 2213, evan6 = 2214, evan7 = 2215, evan8 = 2216, evan9 = 2217, evan10 = 2218}
local jobsLegends = {arans, evans}

local jobsDualBlades = {bladeRecruit = 430, bladeAcolyte = 431, bladeSpecialist = 432, bladeLord = 433, bladeMaster = 434}

local function tableContainsValue(table, val)
    for index, value in ipairs(table) do
        if value == val then
            return true
        end
    end
    return false
end

function charJob.checkIfJobBelongsToSuperUsers()
	if tableContainsValue(privilegedUsers, job) then
		return true
	else
		return false
	end
end

function charJob.checkIfJobBelongsToResistance()
	if tableContainsValue(jobsResistance, job) then
		return true
	else
		return false
	end
end

function charJob.checkIfJobBelongsToExplorers()
	if tableContainsValue(jobsExplorers, job) then
		return true
	else
		return false
	end
end

function charJob.checkIfJobBelongsToKoc()
	if tableContainsValue(jobsKnightsOfCygnus, job) then
		return true
	else
		return false
	end
end

function charJob.checkIfJobBelongsToLegends()
	if tableContainsValue(jobsLegends, job) then
		return true
	else
		return false
	end
end

function charJob.checkIfJobBelongsToDualBlades()
	if tableContainsValue(jobsDualBlades, job) then
		return true
	else
		return false
	end
end

return charJob