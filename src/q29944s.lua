charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29944)

if inventory.item_count(1142245) < 1 and charJob.checkIfJobBelongsToResistance() then
	inventory.add(1142245, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Special Training Superior> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Special Training Superior> has been rewarded.');
end