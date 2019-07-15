local mapFields = {}

local fields = { 
-- Other -- 
	IntroVictoria = 2010000,
-- Maple Road --
	AdventurerTrainingCenter1 = 1010100, -- Maple Road : Adventurer Training Center 1
	AdventurerTrainingCenter2 = 1010200, -- Maple Road : Adventurer Training Center 2
	AdventurerTrainingCenter3 = 1010300, -- Maple Road : Adventurer Training Center 3
	AdventurerTrainingCenter4 = 1010400, -- Maple Road : Adventurer Training Center 4
	SouthperryArmorStore = 2000001, -- Maple Road : Southperry Armor Store
-- Henesys --
	HenesysPark = 100000200, -- Henesys : Henesys Park
	BowmanInstructionalSchool = 100000201, -- Henesys : Bowman Instructional School
-- Victoria Road --
	KerningCityBackAlley = 103050000, -- Victoria Road : Kerning City Back Alley
	--103050100 // Victoria Road : The Secret Garden 2nd Floor
	--103050101 // Victoria Road : Lady Syl's Room
	--103050200 // Victoria Road : The Secret Garden 1st Floor
	--103050300 // Victoria Road : The Secret Garden Basement
-- Victoria Island --
	LithHarbor = 104000000, -- Lith Harbor : Lith Harbor
	LithHarborArmorStore = 104000001, -- Lith Harbor : Lith Harbor Armor Store
	LithHarborGeneralStore = 104000002,	-- Lith Harbor : Lith Harbor General Store
	LithHarborWeaponStore = 104000003, -- Lith Harbor : Lith Harbor Weapon Store
	TrusInfoShop = 104000004, -- Lith Harbor : Tru's Info Shop
-- Swamp --
	SilentSwamp = 105010000, -- Swamp : Silent Swamp
	-- 105010100 // Swamp : Humid Swamp
	-- 105010200 // Swamp : Secret Swamp
-- Edelstein --
	Edelstein = 310000000, -- Black Wing Territory : Edelstein
	EdelsteinCityHall =	310000001, -- Edelstein : Edelstein City Hall
	EdelsteinMedicalCenter = 310000002, -- Edelstein : Edelstein Medical Center
	EdelsteinHairSalon = 310000003, -- Edelstein : Edelstein Hair Salon
	Mansion = 310000004, -- Edelstein : Mansion
	EdelsteinTemporaryAirport =	310000010, -- Edelstein : Edelstein Temporary Airport
	SecretPlazaRoomEntrance	= 310010010, -- Resistance Headquarters : Training Room Entrance
	TrainingRoomA = 310010100, -- Resistance Headquarters : Training Room A
	TrainingRoomB = 310010200, -- Resistance Headquarters : Training Room B
	TrainingRoomC = 310010300, -- Resistance Headquarters : Training Room C
	TrainingRoomD = 310010400, -- Resistance Headquarters : Training Room D
	TrainingRoomE = 310010500, -- Resistance Headquarters : Training Room E
	-- Zipangu --
	ShowaTown = 801000000, -- Zipangu : Showa Town
	--801000001 // Zipangu : Hair Salon
	--801000002 // Zipangu : Plastic Surgery
	--801000100 // Zipangu : Locker Room (M)
	--801000110 // Zipangu : The Secret Spa (M)
	--801000200 // Zipangu : Locker Room (F)
	--801000210 // Zipangu : The Secret Spa (F)
	--801000300 // Zipangu : Showa Street Market
	--801010000 // Zipangu : Showa Street 1
	--801020000 // Zipangu : Showa Street 2
	--801030000 // Zipangu : Showa Street 3
	NearTheHideout = 801040000, -- Zipangu : Near the Hideout
-- Aran Tutorial --
	WoundedSoldiersCamp	= 914000000, -- Black Road : Wounded Soldier's Camp
	ReadyToLeave = 914000100, -- Black Road : Ready to Leave
	BurningForest1 = 914000200, -- Black Road : Burning Forest 1
	BurningForest2 = 914000210, -- Black Road : Burning Forest 2
	BurningForest3 = 914000220, -- Black Road : Burning Forest 3
	DeadEndForest = 914000300,-- Black Road : Dead End Forest
	BurningForest3second = 914000400, -- Black Road : Burning Forest 3
	BurningForest2second = 914000410, -- Black Road : Burning Forest 2
	BurningForest1second = 914000420, -- Black Road : Burning Forest 1
	ReadyToLeave2 = 914000500, -- Black Road : Ready to Leave
-- Edelstein Tutorial --
	NeglectedRockyMountain1 = 931000000, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain2 = 931000001, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	SuspiciousLaboratory1 = 931000010, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory2 = 931000011, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory3 = 931000012, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory4 = 931000013, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	NeglectedRockyMountain3 = 931000020, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain4 = 931000021, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	BehindTheMine = 931000030, -- Dangerous Hide-and-Seek : Behind the Mine
-- Evan Tutorial --
	Teaser1 = 900090000 -- Video : Teaser
	Teaser2 = 900090001 -- Video : Teaser
	Teaser3 = 900090002 -- Video : Teaser
	Teaser4 = 900090003 -- Video : Teaser
	Teaser5 = 900090004 -- Video : Teaser
	Tutorial = 900090100 -- Video : Tutorial 0
	Tutorial1 = 900090101 -- Video : Tutorial 1
	Tutorial2 = 900090102 -- Video : Tutorial 2
	JobAdvancement = 900090103 -- Video : Job Advancement
-- Free Market --
	FreeMarketEtrance = 910000000 -- Hidden Street : Free Market Entrance
	FreeMarket1 = 910000001 -- Hidden Street : Free Market<1>
}

function mapFields.getID(key)
	return fields[key]
end

return mapFields