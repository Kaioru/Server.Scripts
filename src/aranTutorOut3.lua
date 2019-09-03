mapFields = require "lib/mapFields"

target.play_portal_sound_effect()
target.modify_skill(20000016, 0, -1)
target.modify_skill(20000016, 1, 0)
target.transfer_field(mapFields.getID("BurningForest3"), 1)