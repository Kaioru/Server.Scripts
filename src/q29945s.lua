charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29945)

if inventory.item_count(1142246) < 1 and charJob.checkIfJobBelongsToResistance() then
	inventory.add(1142246, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Special Training Master> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Special Training Master> has been rewarded.');
end