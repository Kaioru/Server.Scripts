-- TODO: should spawn on tent exit not in mid of map
mapFields = require "lib/mapFields"

target.play_portal_sound_effect()
target.transfer_field(mapFields.getID("ReadyToLeave"), 0)