local npcSpeakers = {}

local speakers = { 
-- MapleIsland --
	Roger = 2000,
	Sen = 2001,
	Peter = 2002,
	Robin = 2003,
	Todd = 2004,
	Sam = 2005 ,
	Tienk = 2006,
	MapleAdministrator = 2007,  
	Sugar = 2008, 
	Sera = 2100,
	Heena = 2101,
	Nina = 2102,
	Maria =	2103, 
	Pio = 10000,
-- Orbis --
	IsaStationGuide = 2012006, -- Isa the Station Guide
-- Edelstein --
	Elex = 2151000, -- Elex Trainning Instructor, Ferdi after MapleHeroes patch
	Jun = 2159000, 
	Ulrika = 2159001, 
	Von = 2159002,
	Vita1 = 2159006,
	Vita2 = 2159007, 
	Schiller = 2159008,
	J = 2159010,
	SuspiciousHollow = 2159011,
	Gelimer = 2159012,
}

function npcSpeakers.getID(key)
    return speakers[key]
end

return npcSpeakers