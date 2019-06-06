charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29905)

if inventory.item_count(1142065) < 1 and charJob.checkIfJobBelongsToKoC() then
	inventory.add(1142065, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Training Knight> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Training Knight> has been rewarded.');
end