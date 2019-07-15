local mapFields = {}

local fields = { 
-- Edelstein fields --
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
	NeglectedRockyMountain1 = 931000000, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain2 = 931000001, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	SuspiciousLaboratory1 = 931000010, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory2 = 931000011, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory3 = 931000012, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	SuspiciousLaboratory4 = 931000013, -- Dangerous Hide-and-Seek : Suspicious Laboratory
	NeglectedRockyMountain3 = 931000020, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	NeglectedRockyMountain4 = 931000021, -- Dangerous Hide-and-Seek : Neglected Rocky Mountain
	BehindTheMine = 931000030 -- Dangerous Hide-and-Seek : Behind the Mine
}

function mapFields.getID(key)
	return fields[key]
end

return mapFields