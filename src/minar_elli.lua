mapFields = require "lib/mapFields"	
charInventory = require "lib/charInventory"

field = target.field == mapsFields.getID("GreenTreeTrunk") and mapsFields.getID("MinarForestWestBorder") or mapsFields.getID("GreenTreeTrunk")
portal = target.field == mapsFields.getID("GreenTreeTrunk") and "elli00" or "minar00"

if charInventory.hasMagicSeed() then
    target.message("The magical seed is spent and you are transferred to somewhere.")
    charInventory.removeMagicSeed()
    target.transfer_field(field, portal)
else
    target.message("You need a magic seed to use this portal.")
end