--TODO: script here needs to know from which map the user came to the FM so he can be sent back
mapQuests = require "lib/mapQuests"
quest = target.get_quest(mapQuests.getID("FreeMarketQuest"))

target.play_portal_sound_effect()
target.field = tonumber(quest.record)