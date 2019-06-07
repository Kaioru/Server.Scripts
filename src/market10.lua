quest = target.get_quest(7600)
quest.record = tostring(target.field)
target.play_portal_sound_effect()
target.transfer_field(910000000, "st00")