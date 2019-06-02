quest = target.get_quest(22012)
speaker = self.as_speaker(0x1)

if quest.state == 0x1 then
    speaker.say({ 
        "You, who are destined to be a Dragon Master...\r\nYou have finally arrived.", 
        "Go and fulfill your duties as the Dragon Master..." 
    })

    quest.complete()
    target.field = 900090101
end