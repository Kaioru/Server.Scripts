--TODO: who actually says this?
speaker = self.as_speaker(2007)
quest = target.get_quest(29902)
quest.accept()

speaker.say("You have earned the <Veteran Adventurer> title. You can receive a Medal from NPC Dalair.")
speaker.say("Congratulations on earning your honorable #b<Veteran Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")

inventory = target.get_inventory()
inventory.add(1142109, 1)
quest.complete()