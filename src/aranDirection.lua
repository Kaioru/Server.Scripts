mapFields = require "lib/mapFields"
mapEffects = require "lib/mapEffects"

if target.field == mapFields.getID("AranScene") then
	target.direction_mode = true
	target.reserved_effect(mapEffects.getReservedEffect("scene0"))
elseif target.field == mapFields.getID("AranScene1") then
    target.reserved_effect(mapEffects.getReservedEffect("scene1").. target.gender)
elseif target.field == mapFields.getID("AranScene2") then
	target.reserved_effect(mapEffects.getReservedEffect("scene2") .. target.gender)
elseif target.field == mapFields.getID("AranScene3") then
	target.reserved_effect(mapEffects.getReservedEffect("scene3"))
elseif target.field == mapFields.getID("AranHandedPoleArmScene") then
	target.reserved_effect(mapEffects.getReservedEffect("handedPoleArm") .. target.gender)
end