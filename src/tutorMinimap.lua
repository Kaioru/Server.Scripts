mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("KoCTut"))

if quest.record_ex_key("minimap") == "" then
    quest.update_ex("minimap", "clear")
	quest.update("1") -- TODO: still needed?
	target.tutor_message(1, 7000)
end