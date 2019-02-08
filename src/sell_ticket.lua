if target.field == 200000100 then
    selection = self.ask_menu("Hello, I'm the information guide for Orbis Station. Which of our destinations would you like to know more about?", {
        [0] = "Victoria Island",
        [1] = "Ludibrium",
        [2] = "Leafre",
        [3] = "Mu Lung",
        [4] = "Ariant",
        [5] = "Ereve"
    })

    if selection == 0 then
        self.say("Are you trying to go to Victoria Island? Oh, it's a beautiful island with an abundance of beautiful forests. The ship that goes to Victoria #bleaves every " .. target.as_continent(200000111).term .." minutes on the hour#k.")
    elseif selection == 1 then
        self.say("Are you heading towards Ludibrium in Lake Ludus? It's a fun little town that mainly consists of toys. The ship that heads to Ludibrium #bleaves at the top of the hour, and every " .. target.as_continent(200000121).term .. " minutes afterwards#k.")
    elseif selection == 2 then
        self.say("Are you heading towards Leafre of Minar Forest? It's a cozy little town where the halflingers reside. The ship that heads to Leafre #bleaves at the top of the hour, and every " .. target.as_continent(200000131).term .. " minutes afterwards#k.")
    elseif selection == 3 then
        -- TODO
        -- "Are you heading towards Mu Lung in the Mu Lung Temple? I'm sorry, but there's no ship that flies from Orbis to Mu Lung. There is another way to get there, though. There's a #bCrane that runs a cab service for 1 that's always avaible#k, so you'll get there as soon as you wish."
    elseif selection == 4 then
        -- TODO
        -- "Are you heading towards Ariant in Nihal Desert? It's a town full of alchemists that live the life with vigor much like the scorching desert heat. The ship that heads to Ariant #bleaves at the top of the hour, and every 10 minutes afterwards#k."
    elseif selection == 5 then
        -- TODO
        -- "Are you heading towards Ereve? It's a beautiful island blessed with the presence of the Shinsoo the Holy Beast and Empress Cygnus. #bThe boat is for 1 person and it's always readily avaible#k so you can travel to Ereve fast."
    end
elseif target.field == 104020110 then
    contimove = target.as_continent()

    self.say({
        "Hi there! I'm #p1032007#, and I work in this station. Are you thinking of leaving Victoria Island for other places? This station is where you'll find the ship that heads to #bOrbis Station#k of Ossyria leaving #bat the top of the hour, and every " .. contimove.term .. " minutes afterwards#k.",
        "If you are thinking of going to Orbis, please go talk to #b#p1032008##k on the right.",
        "Well, the truth is, we charged for these flights until very recently, but the alchemists of Magatia made a crucial discovery on the fuel that dramaticaly cuts down the amount of Mana used for the flight, so these flight are now free. Don't worry, we still get paid. Now we just get paid through the government."
    })
end