mapFields = require "lib/mapFields"

if target.field == mapFields.getID("BowmanInstructionalSchool")
	target.transfer_field(mapFields.getID("HallOfBowmen"), 5)
elseif target.field == mapFields.getID("MagicLibrary")
	target.transfer_field(mapFields.getID("HallOfMagicians"), 4)
elseif target.field == mapFields.getID("WarriorsSanctuary")
	target.transfer_field(mapFields.getID("HallOfWarriors"), 1)
elseif target.field == mapFields.getID("Hideout")
	target.transfer_field(mapFields.getID("HallOfThieves"), 1)
elseif target.field == mapFields.getID("Ereve")
	target.transfer_field(mapFields.getID("KnightsChamber"), 1)
elseif target.field == mapFields.getID("CrossroadsOfEreve")
	target.transfer_field(mapFields.getID("KnightsChamber"), 1)
elseif target.field == mapFields.getID("DangerousForest")
	target.transfer_field(mapFields.getID("PalaceOfTheMaster"), 1)
end