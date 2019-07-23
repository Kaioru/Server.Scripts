mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("KoCTut"))

quest.update("1")
target.tutor_message(1, 7000)