mapFields = require "lib/mapFields"
charJob = require "lib/charJob"
charConstants = require "lib/charConstants"

fields = {
	mapFields.getID("Henesys"),
	mapFields.getID("Ellinia"),
	mapFields.getID("Perion"),
	mapFields.getID("KerningCity"),
	mapFields.getID("LithHarbor"),
	mapFields.getID("NautilusHarbor"),
}

self.say("Hello, I drive the #p1022001#. If you want to go from town to town safely and fast, then ride our cab. We'll glady take you to your destination with an affordable price.")

text = "Choose your destination, for fees will change from place to place."
if charJob.jobIsBeginner() then
    text = "We have a special 90% discount for beginners." .. " " .. text
	cost = charConstants.getFeeValue("begginerTaxiFee")
else
	cost = charConstants.getFeeValue("nonBegginerTaxiFee")
end

costStr = tostring(cost)
selections = {}

for k, v in pairs(fields) do
    if v != target.field then
        selections[v] = "#m" .. v .. "# (" .. costStr ..  " mesos)"
    end
end

selection = self.ask_menu(text, selections)

if self.ask_yes_no("You don't have anything else to do here, huh? Do you really want to go to #b#m" .. selection .. "##k? It'll cost you #b" .. costStr .." mesos#k.") then
    if target.money < cost then
        self.say("You don't have enough mesos. Sorry to say this, but without them, you won't be able to ride the cab.")
        return
    end

    target.money = target.money - cost
    target.field = selection
else
    self.say("There's a lot to see in this town, too. Come back and find us when you need to go to a different town.")
end