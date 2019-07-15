local npcSpeakers = {}

local speakers = { 
-- Edelstein speakers --
	Jun = 2159000, 
	Ulrika = 2159001, 
	Von = 2159002,
	Vita1 = 2159006,
	Vita2 = 2159007, 
	Schiller = 2159008,
	J = 2159010,
	Gelimer = 2159012
}

function npcSpeakers.getID(key)
    return speakers[key]
end

return npcSpeakers