mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"
npcSpeakers = require "lib/npcSpeakers"
charInventory = require "lib/charInventory"

quest = target.get_quest(mapQuests.getID("MissingChild2"))
athena = self.as_speaker(npcSpeakers.getID("AthenaPierceAranTut"))

athena.say("Where's the kid? If you brought the kid with you, hand him over to me!");
charInventory.removeLostChild()
quest.complete()
target.transfer_field(mapFields.getID("AranScene"), 0)