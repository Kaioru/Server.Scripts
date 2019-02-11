inventory = target.as_inventory()
field = target.field == 101030100 and 240010100 or 101030100
portal = target.field == 101030100 and "elli00" or "minar00"

if inventory.item_count(4031346) > 0 then
    target.message("The magical seed is spent and you are transferred to somewhere.")
    inventory.remove(4031346)
    target.transfer_field(field, portal)
else
    target.message("You need a magic seed to use this portal.")
end