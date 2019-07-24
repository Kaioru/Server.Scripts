mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("KoCTut"))

if quest.record_ex_key("helper") == "" then
    quest.update_ex("helper", "clear")
	target.hire_tutor(true)
	target.tutor_message("Welcome to Maple World! I'm Mimo. I'm in charge of guiding you until you reach Lv. 10 and become a Knight-In-Training. Double-click for further information!", 200, 7000)
end