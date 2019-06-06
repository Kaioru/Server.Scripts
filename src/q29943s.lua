charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29943)

if inventory.item_count(1142244) < 1 and charJob.checkIfJobBelongsToResistance() then
	inventory.add(1142244, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Special Training Graduate> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Special Training Graduate> has been rewarded.');
end