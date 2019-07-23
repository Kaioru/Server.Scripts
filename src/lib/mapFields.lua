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
	ShowSwordsman = 001020100, -- onUserEnter = goSwordman
	ShowMagician = 001020200, -- onUserEnter = goMagician
	ShowArcher = 001020300, -- onUserEnter = goArcher
	ShowRogue = 001020400, -- onUserEnter = goRogue
	ShowPirate = 001020500, -- onUserEnter = goPirate
-- Victoria Island --
	-- Henesys --
	Henesys = 100000000, -- Henesys : Henesys
	HenesysPark = 100000200, -- Henesys : Henesys Park
	BowmanInstructionalSchool = 100000201, -- Henesys : Bowman Instructional School
	HallOfBowmen = 100000204, -- Henesys : Hall of Bowmen
	GolemsTempleEntrance = 100040000, -- Golem's Temple : Golem's Temple Entrance
	-- Ellinia --
	Ellinia = 101000000, -- Ellinia : Ellinia
	-- ElliniaWeaponStore = 101000001, -- Ellinia : Ellinia Weapon Store
	-- ElliniaGeneralStore = 101000002, -- Ellinia : Ellinia General Store
	MagicLibrary = 101000003, -- Ellinia : Magic Library
	HallOfMagicians = 101000004, -- Ellinia : Hall of Magicians
	GreenTreeTrunk = 101030100, -- North Forest : Green Tree Trunk
	-- Perion --
	Perion = 102000000, -- Perion : Perion
	-- PerionWeaponStore = 102000001, // Perion : Perion Weapon Store
	-- PerionGeneralStore = 102000002, // Perion : Perion General Store
	WarriorsSanctuary = 102000003, -- Perion : Warriors' Sanctuary
	HallOfWarriors = 102000004, -- Perion : Hall of Warriors
	-- Kerning City --
	KerningCity = 103000000, -- Kerning City : Kerning City
	--KerningCitySelf-DefenceItemStore = 103000001, -- Kerning City : Kerning City Self-Defence Item Store
	--KerningCityPharmacy = 103000002, -- Kerning City : Kerning City Pharmacy
	Hideout = 103000003, -- Kerning City : Hideout
	HallOfThieves = 103000008, -- Kerning City : Hall of Thieves
	SubwayTicketingBooth = 103000100, -- Victoria Road : Subway Ticketing Booth
	-- Victoria Road --
	KerningCityBackAlley = 103050000, -- Victoria Road : Kerning City Back Alley
	--103050100 // Victoria Road : The Secret Garden 2nd Floor
	--103050101 // Victoria Road : Lady Syl's Room
	--103050200 // Victoria Road : The Secret Garden 1st Floor
	--103050300 // Victoria Road : The Secret Garden Basement
	 -- Lith Harbor --
	LithHarbor = 104000000, -- Lith Harbor : Lith Harbor
	LithHarborArmorStore = 104000001, -- Lith Harbor : Lith Harbor Armor Store
	LithHarborGeneralStore = 104000002,	-- Lith Harbor : Lith Harbor General Store
	LithHarborWeaponStore = 104000003, -- Lith Harbor : Lith Harbor Weapon Store
	TrusInfoShop = 104000004, -- Lith Harbor : Tru's Info Shop
	StationToOrbis = 104020110, -- Port Road : Station to Orbis
-- Swamp --
	SilentSwamp = 105010000, -- Swamp : Silent Swamp
	-- 105010100 // Swamp : Humid Swamp
	-- 105010200 // Swamp : Secret Swamp
-- Dungeon --
	Sleepywood = 105040300, -- Dungeon : Sleepywood
	BalrogsDisappearanceSite = 105100401, -- Balrog Temple : Balrog's Disappearance Site
-- Mushroom Castle --
	MushroomForestField = 106020000, -- Mushroom Castle : Mushroom Forest Field
	CastleWallEdge = 106020501, -- Mushroom Castle : Castle Wall Edge
	CastleWall6 = 106021300, -- Mushroom Castle : Castle Wall 6
-- Nautilus --
	NautilusHarbor = 120000000, -- Nautilus : Nautilus Harbor
	Nautilus = 120000100, -- Nautilus : Nautilus
	NavigationRoom = 120000101, --  Nautilus : Navigation Room
-- Empress Road --
	Ereve = 130000000, -- Empress' Road : Ereve
	KnightsChamber = 130000100, -- Empress' Road : Knights Chamber
	CrossroadsOfEreve = 130000200, -- Empress' Road : Crossroads of Ereve
	EntranceDrillHall = 130020000, -- Empress' Road : Entrance to the Drill Hall
	ForestOfBeginning1 = 130030000, -- Empress's Road : Forest of Beginning 1
	ForestOfBeginning2 = 130030001, -- Empress's Road : Forest of Beginning 2
	ForestOfBeginning3 = 130030002, -- Empress's Road : Forest of Beginning 3
	ForestOfBeginning4 = 130030003, -- Empress's Road : Forest of Beginning 4
	ForestOfBeginning5 = 130030004, -- Empress's Road : Forest of Beginning 5
	APathOutForestBeginning = 130030005, -- Empress's Road : A path out of the Forest of Beginning
-- Snow Island --
	DangerousForest = 140010100,
	PalaceOfTheMaster = 140010110,
	PenguinPort = 140020300, -- Snow Island : Penguin Port
-- Orbis --
	Orbis = 200000000, -- Orbis : Orbis
	OrbisStationEntrance = 200000100, -- Orbis : Orbis Station Entrance
	StationPassagewayVictoriaBound = 200000110, -- Orbis : Station Passageway <Victoria Bound>
	--200000111 // Orbis : Station <Victoria Bound>
	--200000112 // Orbis : Pre-Departure <Victoria Bound>
	StationPathwayLudibrium = 200000120, -- Orbis : Station Pathway<Ludibrium>
	--200000121 // Orbis : Station<Ludibrium>
	--200000122 // Orbis : Before the Departure <Ludibrium>
	CabinPathToLeafre = 200000130, -- Orbis : Cabin Path <To Leafre>
	--200000131 // Orbis : Cabin <To Leafre>
	--200000132 // Orbis : Cabin <To Leafre>
	CabinPathToMuLung = 200000140, -- Orbis : Cabin Path <To Mu Lung>
	--200000141 // Orbis : Cabin <To Mu Lung>
	StationTunnelToAriant = 200000150, -- Orbis : Station Tunnel <To Ariant>
	--200000151 // Orbis : Station <To Ariant>
	--200000152 // Orbis : Station <To Ariant>
	StationHall = 200000160, -- Orbis : Station Hall
	--200000161 // Orbis : Station <To Ereve>
	StationEdelsteinBound = 200000170, -- Orbis : Station <Edelstein Bound>
	IcyColdField = 211050000, -- El Nath : Icy Cold Field
-- Ludibrium --
	Ludibrium = 220000000, -- Ludibrium : Ludibrium
	DogonsHQ = 221040402, -- Hidden Street : Dogon's HQ
-- Korean Folk Town --
	KoreanFolkTown = 222000000, -- Korean Folk Town : Korean Folk Town
	GoblinHouse = 222010402, -- Hidden Street : Goblin House
-- Aquarium --
	Aquarium = 230000000, -- Aquarium : Aquarium
	TheCaveOfPianus = 230040420, -- Aqua Road : The Cave of Pianus
-- Leafre --
	Leafre = 240000000, -- Leafre : Leafre
	MinarForestWestBorder = 240010100, -- Leafre : Minar Forest : West Border
	CrimsonSkyNest = 240080500, -- Leafre : Crimson Sky Nest
-- MuLung --
	MuLung = 250000000, -- Mu Lung : Mu Lung
	IsolatedSwamp = 251010500, -- Herb Town : Isolated Swamp
-- Ariant --
	Ariant = 260000000, -- The Burning Road : Ariant
	BlackMagiciansLab = 261040000, -- Hidden Street : Black Magician's Lab
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
-- New Leaf City --
	NLCSubwayStation = 600010001, -- New Leaf City : NLC Subway Station
	WaitingRoomFromNLCtoKC = 600010002, -- New Leaf City : Waiting Room(From NLC to KC)
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
	Teaser1 = 900090000, -- Video : Teaser
	Teaser2 = 900090001, -- Video : Teaser
	Teaser3 = 900090002, -- Video : Teaser
	Teaser4 = 900090003, -- Video : Teaser
	Teaser5 = 900090004, -- Video : Teaser
	Tutorial = 900090100, -- Video : Tutorial 0
	Tutorial1 = 900090101, -- Video : Tutorial 1
	Tutorial2 = 900090102, -- Video : Tutorial 2
	JobAdvancement = 900090103, -- Video : Job Advancement
-- Free Market --
	FreeMarketEtrance = 910000000, -- Hidden Street : Free Market Entrance
	FreeMarket1 = 910000001, -- Hidden Street : Free Market<1>
-- Guild Quest --
	ExcavationSite = 990000000, --  Sharenian : Excavation Site
}

function mapFields.getID(key)
	return fields[key]
end

return mapFields