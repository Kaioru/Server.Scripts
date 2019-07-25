mapFields = require "lib/mapFields"

if target.field == mapFields.getID("BowmanInstructionalSchool") then
	target.transfer_field(mapFields.getID("HallOfBowmen"), 5)
elseif target.field == mapFields.getID("MagicLibrary") then
	target.transfer_field(mapFields.getID("HallOfMagicians"), 4)
elseif target.field == mapFields.getID("WarriorsSanctuary") then
	target.transfer_field(mapFields.getID("HallOfWarriors"), 1)
elseif target.field == mapFields.getID("Hideout") then
	target.transfer_field(mapFields.getID("HallOfThieves"), 1)
elseif target.field == mapFields.getID("Ereve") then
	target.transfer_field(mapFields.getID("KnightsChamber"), 1)
elseif target.field == mapFields.getID("CrossroadsOfEreve") then
	target.transfer_field(mapFields.getID("KnightsChamber"), 1)
elseif target.field == mapFields.getID("DangerousForest") then
	target.transfer_field(mapFields.getID("PalaceOfTheMaster"), 1)
end