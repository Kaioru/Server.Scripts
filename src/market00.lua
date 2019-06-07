--TODO: script here needs to know from which map the user came to the FM so he can be sent back
quest = target.get_quest(7600)
target.play_portal_sound_effect()
target.field = tonumber(quest.record)