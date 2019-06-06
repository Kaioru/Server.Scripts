charJob = require "lib/charJob"
inventory = target.get_inventory()
quest = target.get_quest(29941)

if inventory.item_count(1142242) < 1 and charJob.checkIfJobBelongsToResistance() then
	inventory.add(1142242, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Special Training Beginner> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Special Training Beginner> has been rewarded.');
end