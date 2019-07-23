mapFields = require "lib/mapFields"
npcSpeakers = require "lib/npcSpeakers"

speaker = self.as_speaker(npcSpeakers.getID("IsaStationGuide"))

locations = {
    {"Victoria Island", "Ship", mapFields.getID("StationPassagewayVictoriaBound")},
    {"Ludibrium", "Ship", mapFields.getID("StationPathwayLudibrium")},
    {"Leafre", "Ship", mapFields.getID("CabinPathToLeafre")},
    {"Mu Lung", "Crane", mapFields.getID("CabinPathToMuLung")},
    {"Ariant", "Genie", mapFields.getID("StationTunnelToAriant")},
    {"Ereve", "Ship", mapFields.getID("StationHall")},
    {"Edelstein","Airship", mapFields.getID("StationEdelsteinBound")}
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