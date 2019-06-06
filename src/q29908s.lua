charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29908)

if inventory.item_count(1142068) < 1  and charJob.checkIfJobBelongsToKoC() then
	inventory.add(1142068, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Official Knight> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Official Knight> has been rewarded.');
end