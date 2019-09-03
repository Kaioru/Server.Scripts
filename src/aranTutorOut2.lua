mapFields = require "lib/mapFields"

target.play_portal_sound_effect()
target.modify_skill(20000014, 0, -1)
target.modify_skill(20000014, 1, 0)
target.modify_skill(20000015, 0, -1)
target.modify_skill(20000015, 1, 0)
target.transfer_field(mapFields.getID("BurningForest2"), 1)