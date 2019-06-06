inventory = target.get_inventory()
quest = target.get_quest(29904)

if inventory.item_count(1142065) < 1 then
	inventory.add(1142065, 1)
	quest.complete()
  -- TODO: Q.ShowInfo('<Noblesse> has been rewarded.');
  -- TODO: Q.ShowInfoOnScreen('<Noblesse> has been rewarded.');
end