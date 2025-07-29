--[[
====================================================================================================
                                        GUID Reference
====================================================================================================
]]

-- ### Core Game Decks & Bags ###
DECK_GUID = "51da6e"              -- Main Deck for drawing to the lineup
FAM_GUID = "34d3af"               -- Familiar Deck
LEG_GUID = "221bc2"               -- Legend Deck
ABILITY_GUID = "f57c85"           -- Ability Cards
DW_GUID = "4d0534"                -- Dead Wizard Token Bag
TROPHY_GUID = "67c0f8"
LINEUP_ZONES = {
    "5613be",
    "fcc8e2",
    "41e75e",
    "151370",
    "55832b"
}

-- ### Player Setup ###
PLAYER_DECKS = {
    Red = "cf9daa", White = "6eaa81", Purple = "416a28", Blue = "fef5a9", Green = "a2593d"
}

PLAYERS = {
    Red = {
        buttonHost = "8d8f38",
        deckArea = "8d4eea", discardArea = "d258e2", playArea = "88a4e4", color = "Red",
        deckPos = {x = -6.32, y = 1.06, z = -28.41},
        endButton = { position = { x=0, y=3.3, z=-0.4 }, height = 175, width = 700, label = "End Turn", font_size = 120, rotation = {0,0,0} },
        drawButton = { position = { x=0, y=3.3, z=-1.2 }, height = 175, width = 700, label = "Draw 1", font_size = 120, rotation = {0,0,0} }
    },
    White = {
        buttonHost = "ac291f",
        deckArea = "e61acc", discardArea = "f46c7c", playArea = "ab41ee", color = "White",
        deckPos = {x = 32.97, y = 1.06, z = -28.58},
        endButton = { position = { x=0, y=3.3, z=-0.4 }, height = 175, width = 700, label = "End Turn", font_size = 120, rotation = {0,0,0} },
        drawButton = { position = { x=0, y=3.3, z=-1.2 }, height = 175, width = 700, label = "Draw 1", font_size = 120, rotation = {0,0,0} }
    },
    Purple = {
        buttonHost = "1a4578",
        deckArea = "b743de", discardArea = "537759", playArea = "a7ca9f", color = "Purple",
        deckPos = {x = 46.27, y = 1.06, z = 9.86},
        endButton = { position = { x=0, y=3.3, z=-0.4 }, height = 175, width = 700, label = "End Turn", font_size = 120, rotation = {0,0,0} },
        drawButton = { position = { x=0, y=3.3, z=-1.2 }, height = 175, width = 700, label = "Draw 1", font_size = 120, rotation = {0,0,0} }
    },
    Blue = {
        buttonHost = "deb4a0",
        deckArea = "b47f6b", discardArea = "cb514e", playArea = "07ba1f", color = "Blue",
        deckPos = {x = 13.92, y = 1.06, z = 28.78},
        endButton = { position = { x=0, y=3.3, z=-0.4 }, height = 175, width = 700, label = "End Turn", font_size = 120, rotation = {0,0,0} },
        drawButton = { position = { x=0, y=3.3, z=-1.2 }, height = 175, width = 700, label = "Draw 1", font_size = 120, rotation = {0,0,0} }
    },
    Green = {
        buttonHost = "047f5f",
        deckArea = "00d014", discardArea = "f345b9", playArea = "0180f7", color = "Green",
        deckPos = {x = -25.47, y = 1.06, z = 28.48},
        endButton = { position = { x=0, y=3.3, z=-0.4 }, height = 175, width = 700, label = "End Turn", font_size = 120, rotation = {0,0,0} },
        drawButton = { position = { x=0, y=3.3, z=-1.2 }, height = 175, width = 700, label = "Draw 1", font_size = 120, rotation = {0,0,0} }
    }
}

-- ### Game Zones ###
CARD_ZONE_GUIDS = { "5613be", "fcc8e2", "41e75e", "151370", "55832b" }
LEG_ZONE = "0d3e62"
DW_ZONES = { Red = "20fa1d", White = "d80387", Purple = "9f91de", Blue = "8836fc", Green = "304d03" }

-- ### Character Data ###
CHARACTERS = {
    {name="Studd Spellslammer", guid="8de123", func="selChar_Studd"},
    {name="Venture the Party Dragon", guid="e4e5f1", func="selChar_Venture"},
    {name="Snotia the Viscous Viscountess", guid="610a36", func="selChar_Snotia"},
    {name="Roachsauce: Purgatory's Playboy", guid="6a7cff", func="selChar_Roachsauce"},
    {name="Mr. Lucky and the Charms", guid="da2faa", func="selChar_MrLucky"},
    {name="McRavey the Highland Magus", guid="136522", func="selChar_McRavey"},
    {name="Joan of Spark", guid="f60fe1", func="selChar_JoanOfSpark"},
    {name="The Game Over Lord", guid="45cf80", func="selChar_GameOverLord"},
    {name="Hellish Huffman and his Band of Rage", guid="2cdfe4", func="selChar_HellishHuffman"},
    {name="Dungstar the Poo Pope", guid="080fc6", func="selChar_Dungstar"},
    {name="Ball of Cthulu", guid="aafe69", func="selChar_BallOfCthulu"},
    {name="Sir Kitty Purrington", guid="c40bd4", func="selChar_SirKitty"},
    {name="Fey Ticklebottom", guid="a2c59c", func="selChar_Fey"},
    {name="Abraca", guid="e508d0", func="selChar_Abraca"}
}

-- ### Event Data ###
TROPHY_DATA = {
    Red =    {msg="Mama.... Just killed a man...", pos={-31.72, 1.34, -20.92}},
    White =  {msg="KILLING SPREE", pos={0.85, 1.34, -20.92}},
    Purple = {msg="Don't mind me I'm just better than you", pos={38.84, 1.34, 16.83}},
    Blue =   {msg="Can you just stay dead already?", pos={7.30, 1.34, 20.53}},
    Green =  {msg="And that's the way the cookie crumbles!", pos={-31.72, 1.34, 20.18}}
}

DEATH_EVENT_DATA = {
    Red = {
        msg = "Bring out your dead!",
        positions = {
            {-19.91, 2.00, -27.39}, {-18.04, 2.00, -27.39}, {-16.13, 2.00, -27.39},
            {-14.26, 2.00, -27.44}, {-12.43, 2.00, -27.43}, {-10.56, 2.00, -27.47},
            {-19.89, 2.00, -29.51}, {-18.04, 2.00, -29.49}, {-16.17, 2.00, -29.47},
            {-14.31, 2.00, -29.50}, {-12.44, 2.00, -29.50}, {-10.59, 2.00, -29.53}
        }
    },
    White = {
        msg = "Screw you guys! I'm going home.",
        positions = {
            {19.21, 2.00, -27.48}, {21.08, 2.00, -27.49}, {23.00, 2.00, -27.49},
            {24.86, 2.00, -27.53}, {26.69, 2.00, -27.53}, {28.56, 2.00, -27.56},
            {19.23, 2.00, -29.61}, {21.08, 2.00, -29.59}, {22.95, 2.00, -29.56},
            {24.81, 2.00, -29.60}, {26.69, 2.00, -29.60}, {28.54, 2.00, -29.62}
        }
    },
    Purple = {
        msg = "Don't Fear the Reaper",
        positions = {
            {45.31, 2.00, -3.84}, {45.26, 2.00, -1.91}, {45.28, 2.00, -0.03},
            {45.25, 2.00, 1.83}, {45.25, 2.00, 3.66}, {45.28, 2.00, 5.54},
            {47.33, 2.00, -3.80}, {47.34, 2.00, -1.95}, {47.34, 2.00, -0.07},
            {47.32, 2.00, 1.78}, {47.32, 2.00, 3.66}, {47.35, 2.00, 5.51}
        }
    },
    Blue = {
        msg = "Well that wasn't very nice...",
        positions = {
            {27.93, 2.00, 27.61}, {26.02, 2.00, 27.55}, {24.14, 2.00, 27.58},
            {22.27, 2.00, 27.56}, {20.42, 2.00, 27.58}, {18.57, 2.00, 27.57},
            {27.89, 2.00, 29.63}, {26.05, 2.00, 29.63}, {24.18, 2.00, 29.64},
            {22.32, 2.00, 29.60}, {20.45, 2.00, 29.61}, {18.60, 2.00, 29.64}
        }
    },
    Green = {
        msg = "In Memoriam",
        positions = {
            {-11.20, 2.00, 27.52}, {-13.12, 2.00, 27.48}, {-15.00, 2.00, 27.51},
            {-16.85, 2.00, 27.47}, {-18.66, 2.00, 27.51}, {-20.56, 2.00, 27.53},
            {-11.24, 2.00, 29.54}, {-13.09, 2.00, 29.56}, {-14.96, 2.00, 29.56},
            {-16.82, 2.00, 29.53}, {-18.69, 2.00, 29.53}, {-20.54, 2.00, 29.56}
        }
    }
}

--[[
====================================================================================================
                                    Initialization & Setup
====================================================================================================
]]

function onLoad(saved_data)
    print("Global onLoad started.")
    gameActive = false
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        gameActive = loaded_data.gameActive or false
        containedObjectValues = loaded_data.containedObjectValues or {}
    else
        containedObjectValues = {}
    end

    -- Initialize Zones
    cardZones = {}
    for _, guid in ipairs(CARD_ZONE_GUIDS) do
        local zone = getObjectFromGUID(guid)
        if zone then table.insert(cardZones, zone) else print("ERROR: Card zone not found for GUID: " .. guid) end
    end

    lZone = {}
    local legendZoneObject = getObjectFromGUID(LEG_ZONE)
    if legendZoneObject then table.insert(lZone, legendZoneObject) else print("ERROR: Legend zone not found for GUID: " .. LEG_ZONE) end

    -- Create UI Start Button
    UI.setXml([[<Button id="startGameButton" onClick="startGame" text="Start Game" position="0 400 0" height="50" width="200" fontSize="24" />]])
    if gameActive then UI.hide("startGameButton") end

    local tokenObj = getObjectFromGUID("7d4177")
    if tokenObj then
        tokenObj.createButton({
            label = "Familiar",
            click_function = "getFamiliars",
            function_owner = self,
            position = {0, 0.3, 0},
            rotation = {0, 180, 0},
            width = 1500,
            height = 800,
            font_size = 360
        })
        print("Familiar button created on 7d4177")
    else
        print("ERROR: Object with GUID 7d4177 not found")
    end

    local adminObj = getObjectFromGUID("751cf9")
    if adminObj then
        adminObj.createButton({
            label = "Reset Game",
            click_function = "resetGame",
            function_owner = self,
            position = {0, 0.3, -1.5},
            width = 1000,
            height = 400,
            font_size = 150,
            color = {1, 0, 0},           -- red
            font_color = {1,1,1},        -- white text
        })
    else
        print("Admin object not found for reset button.")
    end

        -- Legend Button
    local legObj = getObjectFromGUID("726a69")
    if legObj then
        legObj.createButton({
            label = "Legend",
            click_function = "legends",
            function_owner = self,
            position = {0, 0.3, 0},
            rotation = {0, 180, 0},
            width = 1500,
            height = 800,
            font_size = 360
        })
        print("Legend button created on 726a69")
    else
        print("ERROR: Legend object NOT found for GUID: 726a69")
    end

    -- Ability Button
    local abilObj = getObjectFromGUID("5be196")
    if abilObj then
        abilObj.createButton({
            label = "Ability",
            click_function = "getAbility",
            function_owner = self,
            position = {0, 0.3, 0},
            rotation = {0, 180, 0},
            width = 1500,
            height = 800,
            font_size = 360
        })
        print("Ability button created on 5be196")
    else
        print("ERROR: Ability object NOT found for GUID: 5be196")
    end

    -- Create Player-Specific Buttons
    for color, data in pairs(PLAYERS) do
        local host = getObjectFromGUID(data.buttonHost)

        if host then
            -- Draw 1
            local drawButton = data.drawButton
            drawButton.click_function = "drawOne" .. color
            drawButton.function_owner = self
            host.createButton(drawButton)
            _G["drawOne" .. color] = function(_, player_color)
                if player_color == color then drawOne(color) end
            end

            -- End Turn
            local endButton = data.endButton
            endButton.click_function = "endTurn" .. color
            endButton.function_owner = self
            host.createButton(endButton)
            _G["endTurn" .. color] = function(_, player_color)
                if player_color == color then endTurn(color) end
            end

            -- I Died
            host.createButton({
                label = "I Died",
                click_function = "playerDied" .. color,
                function_owner = self,
                position = {0, 3.3, 0.8},
                rotation = {0, 0, 0},
                width = 700,
                height = 175,
                font_size = 120
            })
            _G["playerDied" .. color] = function(_, player_color)
                if player_color == color then playerDied(color) end
            end

            -- I Killed
            host.createButton({
                label = "I Killed",
                click_function = "getTrophy" .. color,
                function_owner = self,
                position = {0, 3.3, 1.2},
                rotation = {0, 0, 0},
                width = 700,
                height = 175,
                font_size = 120
            })
            _G["getTrophy" .. color] = function(_, player_color)
                if player_color == color then getTrophy(color) end
            end
        else
            print("ERROR: buttonHost object NOT found for " .. color)
        end
    end

    -- Create Character Selection Buttons
    Wait.time(setupCharacterButtons, 1)

end

function onSave()
    local data_to_save = {
        gameActive = gameActive,
        containedObjectValues = containedObjectValues
    }
    return JSON.encode(data_to_save)
end

--[[
====================================================================================================
                                    Core Game Mechanics
====================================================================================================
]]

function startGame(_, player_color)
    if gameActive then
        print("Game already active.")
        return
    end
    gameActive = true
    UI.hide("startGameButton")
    print("Starting Game...")

    -- Refill Lineup from main deck
    local mainDeck = getObjectFromGUID(DECK_GUID)
    if mainDeck then
        mainDeck.shuffle()
        refillLineup()
    else
        print("❌ Main deck not found.")
    end

    -- Deal cards to each seated player's hand
    for color, player in pairs(PLAYERS) do
        if Player[color] and Player[color].seated then
            drawCards(player, 5)
        end
    end
end

function resetGame(_, player_color)
    gameActive = false
    UI.show("startGameButton")
    print("Game has been reset by " .. player_color)
end

function endTurn(playerColor)
    local player = PLAYERS[playerColor]
    if not player then return end

    discardHand(player)
    discardPlayed(player)

    Wait.time(function()
        drawCards(player, 5)
        refillLineup()
    end, 0.5)
end

function drawOne(playerColor)
    local player = PLAYERS[playerColor]
    if not player then return end
    drawCards(player, 1)
end

function discardHand(player)
    local hand = Player[player.colour].getHandObjects()
    for _, card in ipairs(hand) do
        card.setPositionSmooth(player.discardArea.getPosition())
    end
end

function discardPlayed(player)
    for _, obj in ipairs(player.playArea.getObjects()) do
        if obj.tag == "Deck" or obj.tag == "Card" then
            obj.setPositionSmooth(player.discardArea.getPosition())
        end
    end
end

function drawCards(player, toDeal)
    local deck = findDeckInZone(player.deckArea)
    if not deck then
        local reshuffled = cycleDiscard(player)
        if reshuffled then
            Wait.condition(function()
                reshuffled.deal(toDeal, player.color)
            end, function()
                return not reshuffled.isSmoothMoving()
            end, 3)
        else
            print("❌ No deck or discard to draw from for " .. player.color)
        end
        return
    end

    local qty = (deck.getQuantity and deck.getQuantity()) or 1
    if qty >= toDeal then
        deck.deal(toDeal, player.color)
    else
        local reshuffled = cycleDiscard(player)
        if reshuffled then
            Wait.condition(function()
                reshuffled.deal(toDeal - qty, player.color)
            end, function()
                return not reshuffled.isSmoothMoving()
            end, 3)
        end
        deck.deal(math.min(qty, toDeal), player.color)
    end
end

function findDeckInZone(zoneGUID)
    local zone = getObjectFromGUID(zoneGUID)
    if not zone then return nil end
    for _, obj in ipairs(zone.getObjects()) do
        if obj.tag == "Deck" or obj.tag == "Card" then
            return obj
        end
    end
    return nil
end

function cycleDiscard(player)
    local discardZone = getObjectFromGUID(player.discardArea)
    if not discardZone then return nil end

    local discards = groupCards(discardZone.getObjects())
    if #discards == 0 then return nil end

    local newDeck = discards[1]
    if #discards > 1 then
        local rest = {}
        for i = 2, #discards do
            table.insert(rest, discards[i])
        end
        newDeck = newDeck.group(rest)
    end

    newDeck.flip()
    newDeck.shuffle()
    newDeck.setPositionSmooth(player.deckPos, false, true)
    return newDeck
end

function groupCards(objs)
    local cards = {}
    for _, obj in ipairs(objs) do
        if obj.tag == "Card" or obj.tag == "Deck" then
            table.insert(cards, obj)
        end
    end
    return cards
end

function refillCards()
    local deck = getObjectFromGUID(DECK_GUID)
    if not deck then return end

    for _, zone in ipairs(cardZones) do
        if #zone.getObjects() == 0 then
            deck.takeObject({flip=true, position=zone.getPosition()})
        end
    end
end

--[[
====================================================================================================
                                    Game Event Functions
====================================================================================================
]]

function getFamiliars(_, playerColor)
    local famDeck = getObjectFromGUID(FAM_GUID)
    if not famDeck then return end
    famDeck.shuffle()
    famDeck.deal(2, playerColor)
end

function legends()
    local deck = getObjectFromGUID(LEG_GUID)
    if not deck then return end
    deck.shuffle()

    local zone = getObjectFromGUID(LEG_ZONE)
    if not zone then return end

    local numPlayers = #getSeatedPlayers()
    local cardsToDeal = 0
    if numPlayers == 2 then cardsToDeal = 3
    elseif numPlayers == 3 then cardsToDeal = 4
    elseif numPlayers == 4 then cardsToDeal = 5
    elseif numPlayers == 5 then cardsToDeal = 6
    end

    for i = 1, cardsToDeal do
        deck.takeObject({position = zone.getPosition()})
    end
end

function getAbility(_, playerColor)
    local abilityDeck = getObjectFromGUID(ABILITY_GUID)
    if not abilityDeck then return end
    abilityDeck.shuffle()
    abilityDeck.deal(2, playerColor)
end

function playerDied(playerColor)
    local deathData = DEATH_EVENT_DATA[playerColor]
    if not deathData then return end

    broadcastToAll(deathData.msg, {r=1, g=0, b=0})

    local dwZone = getObjectFromGUID(DW_ZONES[playerColor])
    local dwBag = getObjectFromGUID(DW_GUID)
    if not dwZone or not dwBag then return end

    local tokenCount = #dwZone.getObjects()
    if tokenCount < #deathData.positions then
        local pos = deathData.positions[tokenCount + 1]
        dwBag.takeObject({
            position = pos,
            rotation = {0, 180, 180}
        })
    else
        broadcastToAll("Max death tokens reached for this player.", {r=1, g=0, b=0})
    end
end

function getTrophy(playerColor)
    local trophyData = TROPHY_DATA[playerColor]
    if not trophyData then return end

    broadcastToAll(trophyData.msg, {r=1, g=0, b=0})

    local trophy = getObjectFromGUID(TROPHY_GUID)
    if trophy then
        trophy.setPosition(trophyData.pos)
    end
end

--[[
====================================================================================================
                                    Character Selection (Preserved 1-to-1)
====================================================================================================
]]

function selChar_Studd(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('8de123')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-27.60, 0.99, -19.92}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-24.78, 1.06, -17.75}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Venture(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('e4e5f1')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Snotia(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('610a36')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Roachsauce(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('6a7cff')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_MrLucky(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('da2faa')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_McRavey(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('136522')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_JoanOfSpark(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('f60fe1')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_GameOverLord(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('45cf80')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_HellishHuffman(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('2cdfe4')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Dungstar(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('080fc6')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_BallOfCthulu(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('aafe69')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_SirKitty(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('c40bd4')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Fey(source, player)
	if player~='Black' and player~='Grey' then
bag = getObjectFromGUID('a2c59c')
local string1 = 'Playmat'
local string2 = 'Health'
local wDestination1 = {23.77, 0.99, -20.69}
local rDestination1 = {-15.20, 0.99, -20.38}
local pDestination1 = {39.24, 0.99, 0.84}
local bDestination1 = {23.36, 0.99, 20.68}
local gDestination1 = {-15.87, 0.99, 20.28}
local wDestination2 = {26.59, 4, -18.52}
local rDestination2 = {-12.38, 4, -18.21}
local pDestination2 = {37.07, 4, 3.66}
local bDestination2 = {20.54, 4, 18.51}
local gDestination2 = {-18.69, 4, 18.11}

local objects = bag.getObjects()
local result = {}
local result2 = {}


if objects ~= nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects ~= nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result ~= nil then
for _, v in ipairs(result) do
if player == 'White' then
bag.takeObject({guid = v, position = wDestination1}) else
if player == 'Red' then
bag.takeObject({guid = v, position = rDestination1}) else
if player == 'Purple' then
bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
if player == 'Blue' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
if player == 'Green' then
bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
end
end
end
end
end
end
end



if result ~= nil then
for _, c in ipairs(result2) do
if player == 'White' then
bag.takeObject({guid = c, position = wDestination2}) else
if player == 'Red' then
bag.takeObject({guid = c, position = rDestination2}) else
if player == 'Purple' then
bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
if player == 'Blue' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
if player == 'Green' then
bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
end
end
end
end
end
end
end

end
end


end
end

function selChar_Abraca(source, player)
    if player~='Black' and player~='Grey' then
    bag = getObjectFromGUID('e508d0')
    local string1 = 'Playmat'
    local string2 = 'Health'
    local wDestination1 = {23.77, 0.99, -20.69}
    local rDestination1 = {-15.20, 0.99, -20.38}
    local pDestination1 = {39.24, 0.99, 0.84}
    local bDestination1 = {23.36, 0.99, 20.68}
    local gDestination1 = {-15.87, 0.99, 20.28}
    local wDestination2 = {26.59, 4, -18.52}
    local rDestination2 = {-12.38, 4, -18.21}
    local pDestination2 = {37.07, 4, 3.66}
    local bDestination2 = {20.54, 4, 18.51}
    local gDestination2 = {-18.69, 4, 18.11}

    local objects = bag.getObjects()
    local result = {}
    local result2 = {}


    if objects ~= nil then
    for _, v in ipairs(objects) do
    if string.find(v.name, string1) then
    table.insert(result, v.guid)
    end
    end

    if objects ~= nil then
    for _, c in ipairs(objects) do
    if string.find(c.name, string2) then
    table.insert(result2, c.guid)
    end
    end


    if result ~= nil then
    for _, v in ipairs(result) do
    if player == 'White' then
    bag.takeObject({guid = v, position = wDestination1}) else
    if player == 'Red' then
    bag.takeObject({guid = v, position = rDestination1}) else
    if player == 'Purple' then
    bag.takeObject({guid = v, rotation = {0,90,0}, position = pDestination1}) else
    if player == 'Blue' then
    bag.takeObject({guid = v, rotation = {0,0,0}, position = bDestination1}) else
    if player == 'Green' then
    bag.takeObject({guid = v, rotation = {0,0,0}, position = gDestination1})
    end
    end
    end
    end
    end
    end
    end



    if result ~= nil then
    for _, c in ipairs(result2) do
    if player == 'White' then
    bag.takeObject({guid = c, position = wDestination2}) else
    if player == 'Red' then
    bag.takeObject({guid = c, position = rDestination2}) else
    if player == 'Purple' then
    bag.takeObject({guid = c, rotation = {0,90,0}, position = pDestination2}) else
    if player == 'Blue' then
    bag.takeObject({guid = c, rotation = {0,0,0}, position = bDestination2}) else
    if player == 'Green' then
    bag.takeObject({guid = c, rotation = {0,0,0}, position = gDestination2})
    end
    end
    end
    end
    end
    end
    end

    end
    end


    end
    end

function setupCharacterButtons()
    for _, charData in ipairs(CHARACTERS) do
        local charBag = getObjectFromGUID(charData.guid)
        if charBag then
            if charBag.getPosition().x < 55 then
                charBag.createButton({
                    label="Select character",
                    tooltip=charData.name,
                    click_function=charData.func,
                    function_owner=self,
                    position={0,0.22,1.25},
                    rotation={0,0,0},
                    width=1150,
                    height=350,
                    font_size=160
                })
            else
            end
        else
        end
    end
end

function wait(time)
   local start = os.time()
   repeat coroutine.yield(0) until os.time() > start + time
end