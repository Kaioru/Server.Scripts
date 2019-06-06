inventory = target.get_inventory()
quest = target.get_quest(29942)

if inventory.item_count(1142243) < 1 then
	inventory.add(1142243, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Special Training Intermediate> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Special Training Intermediate> has been rewarded.');
end