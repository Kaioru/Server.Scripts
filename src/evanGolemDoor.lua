mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("KiddnapingOfCamila")) -- Evan only

target.field = mapFields.getID("GolemsTempleEntrance")

if quest.state == mapQuests.getState("Perform") then
	quest.complete()
	--	pi.playerMessage(5, "Camila rescued!");
	target.sp = target.sp + 1
end