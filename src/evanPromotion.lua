mapFields = require "lib/mapFields"

if target.field == mapFields.getID("Teaser1") then
	target.direction_mode = true
	target.reserved_effect(mapEffects.getReservedEffect("scene0") .. target.gender)
elseif target.field == mapFields.getID("Teaser2") then
    target.reserved_effect(mapEffects.getReservedEffect("scene1"))
elseif target.field == mapFields.getID("Teaser3") then
	target.reserved_effect(mapEffects.getReservedEffect("scene2") .. target.gender)
elseif target.field == mapFields.getID("Teaser4") then
	target.reserved_effect(mapEffects.getReservedEffect("scene3"))
elseif target.field == mapFields.getID("Teaser5") then
	target.field = mapFields.getID("Tutorial")
end