local npcSpeakers = {}

local speakers = { 
-- Maple Island --
	Roger = 2000,
	Sen = 2001,
	Peter = 2002,
	Robin = 2003,
	Todd = 2004,
	Sam = 2005 ,
	Tienk = 2006,
	MapleAdmin = 2007,  
	Sugar = 2008, 
	Sera = 2100,
	Heena = 2101,
	Nina = 2102,
	Maria =	2103, 
	Pio = 10000,
	Mai = 12100,
-- Victoria Island -- 
	AthenaPierce = 1012100, -- Athena Pierce
	Utah = 1012107, -- Utah 
	Dragon =  1013001, -- Dragon
	Anna = 1013100, -- Anna
	DancesWithBalrog = 1022000, -- Dances with Balrog
	GrendelTheReallyOld	= 1032001, -- Grendel the Really Old
	PowerBFore = 1032114, -- Power B.Fore
	DarkLord = 1052001, -- Dark Lord
	Kyrin = 1090000, -- Kyrin
-- Ereve --
	Cygnus = 1101000, -- Cygnus
	Kimu = 1102004, -- Kimu
	Kizan = 1102005, -- Kizan
	Kinu = 1102006, -- Kinu
	Kia = 1102007, -- Kia
	Kisha = 1102008, -- Kisha
	Neinheart = 1102009, -- Neinheart
-- Aran --
	Lilin = 1202000, -- Lilin
	AthenaPierceAranTut = 1209000, -- Athena Pierce
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
-- Other --
	DalairBeginExplorer = 9000066,
	DalairEndExplorer = 9000040,
}

function npcSpeakers.getID(key)
    return speakers[key]
end

return npcSpeakers