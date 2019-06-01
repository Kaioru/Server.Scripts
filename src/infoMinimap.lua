-- TODO: Only execute once
quest = target.get_quest(1031)

if quest.state == 0x1 then
    target.avatar_oriented_effect("UI/tutorial.img/25")
end