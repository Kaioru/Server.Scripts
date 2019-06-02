quest = target.get_quest(22012)

if quest.state == 0x0 then
    quest.accept()
end