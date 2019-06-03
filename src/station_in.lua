speaker = self.as_speaker(2012006)
locations = {
    {"Victoria Island", "Ship", 200000110},
    {"Ludibrium", "Ship", 200000120},
    {"Leafre", "Ship", 200000130},
    {"Mu Lung", "Crane", 200000140},
    {"Ariant", "Genie", 200000150},
    {"Ereve", "Ship", 200000160},
    {"Edelstein","Airship", 200000170}
}
selections = {}

for k, v in pairs(locations) do
    selections[k] = "Platform to Board a " .. v[2] .. " to " .. v[1]
end

selection = speaker.ask_menu("There are many Platforms at the Orbis Station. You must find the correct Platform for your destination. Which Platform would you like to go to?", selections)
location = locations[selection]

if speaker.ask_yes_no("Even if you've entered a wrong Tunnel, you can always get back to where I am, via the Portal, so don't worry. Would you like to go to the #bPlatform to the " .. location[2] .. " that heads to " .. location[1] .. "#k?") then
    target.field = location[3]
else
    speaker.say("Please make sure you know where you are going and then go to the platform through me. The ride is on schedule so you better not miss it!")
end
