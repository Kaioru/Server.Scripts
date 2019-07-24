local mapQuests = {}

local states = {
	None = 0x0,
	Perform = 0x1,
	Complete = 0x2,
	PartyQuest = 0x3,
	No = 0x4
}

local questIcons = {
	questIcon4 = "UI/UIWindow.img/QuestIcon/4/0",
	questIcon8 = "UI/UIWindow.img/QuestIcon/8/0",
}

local quests = { 
-- Adventurer Tutorial --
	Reactor1 = 1008,
	Reactor2 = 1020,
	RogersApple = 1021,
	Minimap = 1031,
	AttackPickUpSkill = 1035,
	MaiFirstTrainnig = 1041, -- Mai's First Training
	MaiSecondTrainnig = 1042, -- Mai's Second Training
	MaiThirdTrainnig = 1043, -- Mai's Third Training
	MaiFinalTrainnig = 1044, -- Mai's Final Training
-- Dual Blade Missions --
	Infiltration = 2351, -- First Mission: Infiltration
-- Other quests --
	FreeMarketQuest = 7600,
-- KoC Tutorial --
	GreetingsFromYoungEmpress = 20000, -- Greetings From the Young Empress
	WelcomeToEreve = 20010, -- Welcome To Ereve
	IllShowYouHowToHunt = 20011, -- I'll Show You How to Hunt
	KoCTut = 20022, -- hidden
-- Aran Tutorial --
	MissingChild = 21000, -- Find the Missing Kid 1
	MissingChild2 = 21001, -- Find the Missing Kid 2
	AranTut = 21002, -- hidden
	AranTut2 = 21019, -- hidden
-- Evan Tutorial --
	StrangeDream = 22000, -- Strange Dream
	FeedingBullDog = 22001, -- Feeding Bull Dog
	DragonEyes = 22012,
	EvanTut = 22013, -- hidden
-- Evan --
	KiddnapingOfCamila = 22557, -- Kidnapping of Camila
-- Edelstein Tutorial --
	VitaEscape = 23007,
	Resistance1stJob = 23011,
	AStudentResistanceBattleMage = 23100, -- A Student of the Resistance [Battle Mage]
	AStudentResistanceWildHunter = 23101, -- A Student of the Resistance [Wild Hunter]
	AStudentResistanceMechanic = 23102, -- A Student of the Resistance [Mechanic]
	AgilityTraining = 23103, 
	AttackTraining = 23104, 
	EnduranceTraining = 23105, 
	FinalTrainingCourse = 23106,
	HideAndSeek = 23999,
-- Explorer Quest --
	BeginnerExplorer = 29005, -- Beginner Explorer
	TheOneWhosTouchedSky = 29904, -- The One Who's Touched the Sky
	ElNathExplorer = 29006, -- El Nath Mts. Explorer
	LudusLakeExplorer  = 29007, -- Ludus Lake Explorer
	UnderseaExplorer = 29008, -- Undersea Explorer
	MuLungExplorer = 29009, -- Mu Lung Explorer
	NihalDesertExplorer = 29010, -- Nihal Desert Explorer
	MinarForestExplorer = 29011, -- Minar Forest Explorer
	SleepywoodExplorer = 29014, -- Sleepywood Explorer
-- Adventurer Trainning Quest --
	BeginnerAdventurer = 29900, -- Beginner Adventurer
	JuniorAdventurer = 29901, -- Junior Adventurer
	VeteranAdventurer = 29902, -- Veteran Adventurer
	MasterAdventurer = 29903, -- Master Adventurer
-- KoC Trainning Quest --
	Noblesse = 29905, -- Noblesse
	TrainingKnight = 29906, -- Training Knight
	OfficialKnight = 29907, -- Official Knight
	AdvancedKnight = 29908, -- Advanced Knight
	CaptainKnight = 29909, -- Captain Knight
-- Special Trainning Quest
	SpecialTrainingBeginner = 29941, -- Special Training Beginner 
	SpecialTrainingIntermediate = 29942, -- Special Training Intermediate
	SpecialTrainingGraduate = 29943, -- Special Training Graduate 
	SpecialTrainingSuperior	= 29944, -- Special Training Superior
	SpecialTrainingMaster = 29945, -- Special Training Master
}

local questExpRewards = {
	KidFound3 = 3,
	KidFound5 = 5,
	RogersAppleFinish = 10,
	WelcomeToEreveFinish = 15,
	StrangeDreamFinish = 20,
	GreetingsFromYoungEmpressFinish = 20,
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