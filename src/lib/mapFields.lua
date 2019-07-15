local mapFields = {}

local fields = { 
-- Victoria Island --
	IntroVictoria = 2010000,
	LithHarbor = 104000000, -- Lith Harbor : Lith Harbor
	LithHarborArmorStore = 104000001, -- Lith Harbor : Lith Harbor Armor Store
	LithHarborGeneralStore = 104000002,	-- Lith Harbor : Lith Harbor General Store
	LithHarborWeaponStore = 104000003, -- Lith Harbor : Lith Harbor Weapon Store
	TrusInfoShop = 104000004, -- Lith Harbor : Tru's Info Shop
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
-- Edelstein Tutorial ---
	NeglectedRockyMountain1 = 931000000, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain2 = 931000001, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	SuspiciousLaboratory1 = 931000010, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory2 = 931000011, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory3 = 931000012, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory4 = 931000013, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	NeglectedRockyMountain3 = 931000020, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain4 = 931000021, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	BehindTheMine = 931000030, -- Dangerous Hide-and-Seek : Behind the Mine
-- Free Market --
	FreeMarketEtrance = 910000000 -- Hidden Street : Free Market Entrance
	FreeMarket1 = 910000001 -- Hidden Street : Free Market<1>
}

function mapFields.getID(key)
	return fields[key]
end

return mapFields