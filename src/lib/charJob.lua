local charJob = {}

local job = target.job

local explorers = {
	beginner = 0,
	warrior = 100,
	fighter = 110,
	crusader = 111, 
	hero = 112,
	page = 120, 
	whiteKnight = 121, 
	paladin = 122,
	spearman = 130, 
	dragonKnight = 131, 
	darkKnight = 132,
	magician = 200,
	fpWizard = 210, 
	fpMage = 211, 
	fpArchmage = 212,
	ilWizard = 220, 
	ilMage = 221, 
	ilArchmage = 222,
	cleric = 230, 
	priest = 231, 
	bishop = 232,
	bowman = 300,
	hunter = 310, 
	ranger = 311, 
	bowMaster = 312,
	crossbowman = 320, 
	sniper = 321, 
	marksman = 322,
	thief = 400,
	assasin = 410, 
	hermit = 411, 
	nighLord = 412,
	pirate = 500,
	brawler = 510,
	marauder = 511, 
	buccaneer = 512,
	gunslinger = 520, 
	outlaw = 521, 
	corsair = 522
}

local dualBlades = {
	bladeRecruit = 430, 
	bladeAcolyte = 431,
	bladeSpecialist = 432,
	bladeLord = 433,
	bladeMaster = 434
}

local privilegedUsers = {
	manager = 800, 
	gm = 900, 
	superGM = 910
}

local knightsOfCygnus = {
	noblesse = 1000,
	dawnWarrior1 = 1100, 
	dawnWarrior2 = 1110,
	dawnWarrior3 = 1111,
	dawnWarrior4 = 1112,
	blazeWizard1 = 1200, 
	blazeWizard2 = 1210, 
	blazeWizard3 = 1211,
	blazeWizard4 = 1212,
	windArcher1 = 1300, 
	windArcher2 = 1310, 
	windArcher3 = 1311, 
	windArcher4 = 1312,
	nightWalker1 = 1400,
	nightWalker2 = 1410, 
	nightWalker3 = 1411,
	nightWalker4 = 1412,
	thunderBreaker1 = 1500,
	thunderBreaker2 = 1510,
	thunderBreaker3 = 1511,
	thunderBreaker4 = 1512
}

local legends = {
	aran1 = 2100,
	aran2 = 2110,
	aran3 = 2111,
	aran4 = 2112,
	evan1 = 2200,
	evan2 = 2210,
	evan3 = 2211,
	evan4 = 2212,
	evan5 = 2213,
	evan6 = 2214,
	evan7 = 2215,
	evan8 = 2216,
	evan9 = 2217,
	evan10 = 2218
}

local resistance = {
	 citizen = 3000,
	 battleMage1 = 3200, 
	 battleMage2 = 3210, 
	 battleMage3 = 3211, 
	 battleMage4 = 3212,
	 wildHunter1 = 3300, 
	 wildHunter2 = 3310,
	 wildHunter3 = 3311, 
	 wildHunter4 = 3312,
	 mechanic1 = 3500,
	 mechanic2 = 3510,
	 mechanic3 = 3511,
	 mechanic4 = 3512
}

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end

  return false
end

function charJob.belongsTo(jobtype)
	if jobtype == "privileged" then
		if table.contains(privilegedUsers, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "resistance" then
		if table.contains(jobsResistance, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "explorers" then 
		if table.contains(explorers, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "knightsOfCygnus" then
		if table.contains(jobsKnightsOfCygnus, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "legends" then 
		if table.contains(jobsLegends, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "dualBlades" then
		if table.contains(jobsDualBlades, job) then
			return true
		else 
			return false
		end
	elseif jobtype == "beginner" then
		if job == beginner then
			return true
		else 
			return false
		end
	end
end

local jobAdvStats = {
  warrior = {sp=(target.level - 10) * 3 + 1, ap=(target.level - 1) * 5 - 12, maxHp=target.max_hp + 200 + math.random(50), str=35,  dex=4,  int=4,  luk=4},
  magician = {sp=(target.level - 8) * 3 + 1, ap=(target.level - 1) * 5 - 7, maxMp=target.max_mp + 100 + math.random(50), str=4,  dex=4,  int=20,  luk=4},
  bowman = {sp=(target.level - 10) * 3 + 1, ap=(target.level - 1) * 5 - 12, maxHp=target.max_hp + 100 + math.random(50), maxMp=target.max_mp + 25 + math.random(25), str=4,  dex=25,  int=4,  luk=4},
  thief = {sp=(target.level - 10) * 3 + 1, ap=(target.level - 1) * 5 - 12, maxHp=target.max_hp + 100 + math.random(50), maxMp=target.max_mp + 25 + math.random(25), str=4,  dex=25,  int=4,  luk=4},
  pirate = {sp=(target.level - 10) * 3 + 1, ap=(target.level - 1) * 5 - 7, maxHp=target.max_hp + 150 + math.random(50), maxMp=target.max_mp + 50 + math.random(25), str=4,  dex=20,  int=4,  luk=4},
  battleMage1 = {sp=(target.level - 10) * 3 + 5, ap=(target.level - 1) * 5 - 12, maxHp=target.max_hp + 150 + math.random(25), maxMp=target.max_mp + 50 + math.random(25), str=4,  dex=4,  int=20,  luk=4},
}

function charJob.setAdvStats(jobstr) 
  if jobstr == "warrior" then
    target.job = warrior	 
    target.sp = jobAdvStats.warrior.sp
    target.ap = jobAdvStats.warrior.ap
    target.max_hp = jobAdvStats.warrior.maxHp
    target.hp = target.max_hp
    target.str = jobAdvStats.warrior.str
    target.dex = jobAdvStats.warrior.dex
    target.int = jobAdvStats.warrior.int 
    target.luk = jobAdvStats.warrior.luk
  elseif jobstr == "figther" then
  elseif jobstr == "page" then
  elseif jobstr == "magician" then
    target.job = magician	 
    target.sp = jobAdvStats.magician.sp
    target.ap = jobAdvStats.magician.ap
    target.max_mp = jobAdvStats.magician.maxMp
    target.mp = target.max_mp
    target.str = jobAdvStats.magician.str
    target.dex = jobAdvStats.magician.dex
    target.int = jobAdvStats.magician.int
    target.luk = jobAdvStats.magician.luk
  elseif jobstr == "fpWizard" then
  elseif jobstr == "ilWizard" then
  elseif jobstr == "cleric" then
  elseif jobstr == "bowman" then
    target.job = bowman
  	target.sp = jobAdvStats.bowman.sp
    target.ap = jobAdvStats.bowman.ap
    target.max_hp = jobAdvStats.bowman.maxHp
    target.max_mp = jobAdvStats.bowman.maxMp
    target.hp = target.max_hp
    target.mp = target.max_mp
	target.str = jobAdvStats.bowman.str
	target.dex = jobAdvStats.bowman.dex
	target.int = jobAdvStats.bowman.int
	target.luk = jobAdvStats.bowman.luk
  elseif jobstr == "hunter" then
  elseif jobstr == "crossbowman" then
  elseif jobstr == "thief" then
    target.job = thief
  	target.sp = jobAdvStats.thief.sp
    target.ap = jobAdvStats.thief.ap
    target.max_hp = jobAdvStats.thief.maxHp
    target.max_mp = jobAdvStats.thief.maxMp
    target.hp = target.max_hp
    target.mp = target.max_mp
	target.str = jobAdvStats.thief.str
	target.dex = jobAdvStats.thief.dex
	target.int = jobAdvStats.thief.int
	target.luk = jobAdvStats.thief.luk
  elseif jobstr == "assasin" then
  elseif jobstr == "bandit" then
  elseif jobstr == "pirate" then
    target.job = pirate
  	target.sp = jobAdvStats.pirate.sp
    target.ap = jobAdvStats.pirate.ap
    target.max_hp = jobAdvStats.pirate.maxHp
    target.max_mp = jobAdvStats.pirate.maxMp
    target.hp = target.max_hp
    target.mp = target.max_mp
	target.str = jobAdvStats.pirate.str
	target.dex = jobAdvStats.pirate.dex
	target.int = jobAdvStats.pirate.int
	target.luk = jobAdvStats.pirate.luk
  elseif jobstr == "brawler" then
  elseif jobstr == "gunslinger" then
  elseif jobstr == "battleMage1" then
	target.job = battleMage1
	target.set_extend_sp(1, jobAdvStats.battleMage1.sp)
    target.ap = jobAdvStats.battleMage1.ap
    target.max_hp = jobAdvStats.battleMage1.maxHp
    target.max_mp = jobAdvStats.battleMage1.maxMp
    target.hp = target.max_hp
    target.mp = target.max_mp
	target.str = jobAdvStats.battleMage1.str
	target.dex = jobAdvStats.battleMage1.dex
	target.int = jobAdvStats.battleMage1.int
	target.luk = jobAdvStats.battleMage1.luk
  elseif jobstr == "wildHunter1" then
  elseif jobstr == "mechanic1" then
  end
end

return charJob