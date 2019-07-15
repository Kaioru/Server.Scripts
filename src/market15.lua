mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("FreeMarketQuest"))
quest.record = tostring(target.field)

target.play_portal_sound_effect()
target.transfer_field(mapFields.getID("FreeMarketEtrance"), "st00")