npcSpeakers = require "lib/npcSpeakers"
mapFields = require "lib/mapFields"
charJob = require "lib/charJob"
charConstants = require "lib/charConstants"

athenaPierce = self.as_speaker(npcSpeakers.getID("AthenaPierce"))
dancesWithBalrog = self.as_speaker(npcSpeakers.getID("DancesWithBalrog"))
grendelTheReallyOld = self.as_speaker(npcSpeakers.getID("GrendelTheReallyOld"))
darkLord = self.as_speaker(npcSpeakers.getID("DarkLord"))
kyrin = self.as_speaker(npcSpeakers.getID("Kyrin"))

if target.level >= charConstants.getLvlCheckValue("firstJobAdvOther") and charJob.jobIsBeginner() then
	if target.field == mapFields.getID("NavigationRoom") then
		target.converse("kairinT", kyrin, target)
	elseif target.field == mapFields.getID("WarriorsSanctuary") then
		target.converse("fighter", dancesWithBalrog, target)
	elseif target.field == mapFields.getID("Hideout") then
		target.converse("rogue", darkLord, target)
	elseif target.field == mapFields.getID("BowmanInstructionalSchool") then
		target.converse("bowman", athenaPierce, target)
	elseif target.field == mapFields.getID("MagicLibrary") then
		target.converse("magician", grendelTheReallyOld, target)
	end
end