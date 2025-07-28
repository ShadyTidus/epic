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
COUNT_BAG = "d04e31"              -- Counting Bag
TROPHY_GUID = "67c0f8"

-- ### Player Setup ###
PLAYER_DECKS = {
    Red = "228b3c", White = "c980bc", Purple = "8f2573", Blue = "d97e5b", Green = "61cb4d"
}

PLAYERS = {
    Red = {
        deckArea = "8d4eea", discardArea = "d258e2", playArea = "88a4e4", color = "Red",
        endButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "End Turn", font_size = 80, rotation = {0,180,0} },
        drawButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "Draw 1", font_size = 80, rotation = {0,180,0} }
    },
    White = {
        deckArea = "e61acc", discardArea = "f46c7c", playArea = "ab41ee", color = "White",
        endButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "End Turn", font_size = 80, rotation = {0,180,0} },
        drawButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "Draw 1", font_size = 80, rotation = {0,180,0} }
    },
    Purple = {
        deckArea = "b743de", discardArea = "537759", playArea = "a7ca9f", color = "Purple",
        endButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "End Turn", font_size = 80, rotation = {0,180,0} },
        drawButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "Draw 1", font_size = 80, rotation = {0,180,0} }
    },
    Blue = {
        deckArea = "b47f6b", discardArea = "cb514e", playArea = "07ba1f", color = "Blue",
        endButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "End Turn", font_size = 80, rotation = {0,180,0} },
        drawButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "Draw 1", font_size = 80, rotation = {0,180,0} }
    },
    Green = {
        deckArea = "00d014", discardArea = "f345b9", playArea = "0180f7", color = "Green",
        endButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "End Turn", font_size = 80, rotation = {0,180,0} },
        drawButton = { position = { x=0, y=-0.3, z=-0.8 }, height = 125, width = 375, label = "Draw 1", font_size = 80, rotation = {0,180,0} }
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
    {name="Fey Ticklebottom", guid="a2c59c", func="selChar_Fey"}
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
    print("Initializing card zones...")
    cardZones = {}
    for _, guid in ipairs(CARD_ZONE_GUIDS) do
        local zone = getObjectFromGUID(guid)
        if zone then table.insert(cardZones, zone) else print("ERROR: Card zone not found for GUID: " .. guid) end
    end

    print("Initializing legend zone...")
    lZone = {}
    local legendZoneObject = getObjectFromGUID(LEG_ZONE)
    if legendZoneObject then table.insert(lZone, legendZoneObject) else print("ERROR: Legend zone not found for GUID: " .. LEG_ZONE) end

    print("Creating UI Start Button...")
    -- Create UI Start Button
    UI.setXml([[<Button id="startGameButton" onClick="startGame" text="Start Game" position="0 400 0" height="50" width="200" fontSize="24" />]])
    if gameActive then UI.hide("startGameButton") end

    print("Linking World Action Buttons...")
    local famButton = getObjectFromGUID("7d4177")
    if famButton then
        famButton.setClickable(true)
        famButton.setClickFunction("getFamiliars")
        famButton.setFunctionOwner(self)
        print("Familiar button linked.")
    else
        print("ERROR: Familiar button NOT found for GUID: 7d4177")
    end

    local legButton = getObjectFromGUID("726a69")
    if legButton then
        legButton.setClickable(true)
        legButton.setClickFunction("legends")
        legButton.setFunctionOwner(self)
        print("Legend button linked.")
    else
        print("ERROR: Legend button NOT found for GUID: 726a69")
    end

    local abilButton = getObjectFromGUID("5be196")
    if abilButton then
        abilButton.setClickable(true)
        abilButton.setClickFunction("getAbility")
        abilButton.setFunctionOwner(self)
        print("Ability button linked.")
    else
        print("ERROR: Ability button NOT found for GUID: 5be196")
    end

    local dwButton = getObjectFromGUID("86826c")
    if dwButton then
        dwButton.setClickable(true)
        dwButton.setClickFunction("dWToken")
        dwButton.setFunctionOwner(self)
        print("DW Tokens button linked.")
    else
        print("ERROR: DW Tokens button NOT found for GUID: 86826c")
    end

    print("Creating Player-Specific Buttons...")
    -- Create Player-Specific Buttons
    for color, data in pairs(PLAYERS) do
        print("Attempting to create buttons for player: " .. color)
        local deckArea = getObjectFromGUID(data.deckArea)
        local discardArea = getObjectFromGUID(data.discardArea)

        if deckArea then
            print("Found deckArea for " .. color .. ": " .. data.deckArea)
            local drawButton = data.drawButton
            drawButton.click_function = "drawOne" .. color
            drawButton.function_owner = self
            deckArea.createButton(drawButton)
            _G["drawOne" .. color] = function(_, player_color) if player_color == color then drawOne(color) end end
        else
            print("ERROR: deckArea NOT found for " .. color .. ". GUID: " .. data.deckArea)
        end

        if discardArea then
            print("Found discardArea for " .. color .. ": " .. data.discardArea)
            local endButton = data.endButton
            endButton.click_function = "endTurn" .. color
            endButton.function_owner = self
            discardArea.createButton(endButton)
            _G["endTurn" .. color] = function(_, player_color) if player_color == color then endTurn(color) end end

            -- Add death and trophy buttons here as well
            discardArea.createButton({label="I Died", click_function="playerDied"..color, function_owner=self, position={-0.5, 0.1, 0}, height=100, width=200, font_size=60})
            _G["playerDied"..color] = function(_, player_color) if player_color == color then playerDied(color) end end

            discardArea.createButton({label="I Killed", click_function="getTrophy"..color, function_owner=self, position={0.5, 0.1, 0}, height=100, width=200, font_size=60})
            _G["getTrophy"..color] = function(_, player_color) if player_color == color then getTrophy(color) end end
        else
            print("ERROR: discardArea NOT found for " .. color .. ". GUID: " .. data.discardArea)
        end
    end

    print("Scheduling setupCharacterButtons.")
    -- Create Character Selection Buttons
    Wait.time(setupCharacterButtons, 1)

    print("Initializing Counting Bag...")
    -- Initialize Counting Bag
    local countBag = getObjectFromGUID(COUNT_BAG)
    if countBag then
        countBag.createButton({label="", click_function="none", function_owner=self, position={0,0.4,-2.5}, rotation={0,180,0}, height=0, width=0, font_color={1,1,1}, font_size=500})
        updateValue()
        if not isActive then
            isActive = true
            startLuaCoroutine(self, "updateBag")
        end
    else
        print("ERROR: Counting Bag not found for GUID: " .. COUNT_BAG)
    end
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

function startGame(_, player_color, alt_click)
    if gameActive then return end
    gameActive = true
    UI.hide("startGameButton")

    local mainDeck = getObjectFromGUID(DECK_GUID)
    if mainDeck then
        mainDeck.shuffle()
        refillCards()
    end

    for color, guid in pairs(PLAYER_DECKS) do
        local playerDeck = getObjectFromGUID(guid)
        if playerDeck and playerDeck.tag == "Deck" then
            playerDeck.shuffle()
            drawCards(PLAYERS[color], 5)
        end
    end
end

function endTurn(playerColor)
    local player = PLAYERS[playerColor]
    discardHand(player)
    discardPlayed(player)
    Wait.time(function() drawCards(player, 5) end, 0.5)
end

function drawOne(playerColor)
    local player = PLAYERS[playerColor]
    drawCards(player, 1)
end

function discardHand(player)
    local playerCards = Player[player.color].getHandObjects()
    local discardArea = getObjectFromGUID(player.discardArea)
    if not discardArea then return end

    for _, card in ipairs(playerCards) do
        card.use_hands = false
        card.setPositionSmooth(discardArea.getPosition(), false, true)
        Wait.time(function() card.use_hands = true end, 0.2)
    end
end

function discardPlayed(player)
    local playArea = getObjectFromGUID(player.playArea)
    local discardArea = getObjectFromGUID(player.discardArea)
    if not playArea or not discardArea then return end

    local playedCards = playArea.getObjects()
    for _, card in ipairs(playedCards) do
        if card.tag == "Deck" or card.tag == "Card" then
            card.setPositionSmooth(discardArea.getPosition(), false, true)
        end
    end
end

function drawCards(player, numCards)
    local deckArea = getObjectFromGUID(player.deckArea)
    if not deckArea then return end

    local deck = deckArea.getObjects()[1]
    local deckRemains = 0
    if deck then
        deckRemains = deck.getQuantity()
    end

    if deckRemains < numCards then
        local newDeck = cycleDiscard(player)
        if newDeck then
            Wait.condition(function() newDeck.deal(numCards - deckRemains, player.color) end,
                          function() return not newDeck.isSmoothMoving() end, 3)
        end
    else
        deck.deal(numCards, player.color)
    end
end

function cycleDiscard(player)
    local discardArea = getObjectFromGUID(player.discardArea)
    local deckArea = getObjectFromGUID(player.deckArea)
    if not discardArea or not deckArea then return nil end

    local discards = discardArea.getObjects()
    if #discards > 0 then
        local firstCard = discards[1]
        local otherCards = {}
        for i = 2, #discards do
            table.insert(otherCards, discards[i])
        end

        local newDeck = firstCard.group(otherCards)
        newDeck.flip()
        newDeck.shuffle()
        newDeck.setPositionSmooth(deckArea.getPosition())
        return newDeck
    end
    return nil
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
end

--[[
====================================================================================================
                                    Game Event Functions
====================================================================================================
]]

function dWToken()
    local dwBag = getObjectFromGUID(DW_GUID)
    local countBag = getObjectFromGUID(COUNT_BAG)
    if not dwBag or not countBag then return end

    local numTokens = 4 * #getSeatedPlayers()
    local dropPosition = countBag.getPosition()
    dropPosition.y = dropPosition.y + 5

    for i = 1, numTokens do
        dwBag.takeObject({position = dropPosition})
    end
end

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
    local countBag = getObjectFromGUID(COUNT_BAG)
    if not dwZone or not countBag then return end

    local tokenCount = #dwZone.getObjects()
    if tokenCount < #deathData.positions then
        local pos = deathData.positions[tokenCount + 1]
        countBag.takeObject({position=pos, rotation={0,180,180}})
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

function setupCharacterButtons()
    print("setupCharacterButtons called.")
    for _, charData in ipairs(CHARACTERS) do
        local charBag = getObjectFromGUID(charData.guid)
        if charBag then
            print("Found character bag: " .. charData.name .. " (" .. charData.guid .. ")")
            if charBag.getPosition().x < 55 then
                print("Condition met for " .. charData.name .. ". Creating button.")
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
                print("Condition NOT met for " .. charData.name .. ". X position: " .. charBag.getPosition().x)
            end
        else
            print("Character bag NOT found for: " .. charData.name .. " (GUID: " .. charData.guid .. ")")
        end
    end
end

--[[
====================================================================================================
                                    Counting Bag (Preserved 1-to-1)
====================================================================================================
]]

valueVariable = "value"
valueDescription = "Value[%p%s]+(%d+)[^%d%a]*"
itemValues = { ["Coin 1"] = 1, ["Coin 5"] = 5 }
valueName = "Coin[%p%s]+(%d+)[^%d%a]*"
value = 0
containedObjectValues = { }
checkFrequency = 1
isActive = false
isRunning = false
isCounting = false
isLockedBeforeCounting = false
isLockedUntil = false

function updateSave()
  local data_to_save = {["containedObjectValues"] = containedObjectValues}
  saved_data = JSON.encode(data_to_save)
  self.script_state = saved_data
  return saved_to_save
end

function updateBag()
  isRunning = true
  while isRunning do
    countItems()
    if isLockedUntil ~= false and os.time() > isLockedUntil then
      self.setLock(isLockedBeforeCounting)
      isLockedBeforeCounting = false
    end
    wait(checkFrequency)
  end
  coroutine.yield(1)
end

function onDestroy()
  isRunning = false
end

function getValue(object)
  local v = 0
  local varerr, var = pcall(object.getVar, valueVariable)
  local descerr, i, j, descVal = pcall(string.find, object.getDescription(), valueDescription)
  local tableEntry = itemValues[object.getName()]
  local nameerr, i, j, nameVal = pcall(string.find, object.getName(), valueName)
  if varerr and var ~= nil and tonumber(var) ~= nil then
    v = tonumber(var)
  elseif descerr and descVal ~= nil then
    v = descVal
  elseif tableEntry ~= nil and tonumber(tableEntry) ~= nil then
    v = tonumber(tableEntry)
  elseif nameerr and nameVal ~= nil then
    v = nameVal
  end

  local stack = 1
  local stackerr, q = pcall(object.getQuantity)
  if stackerr and object.tag ~= "Bag" then
    stack = math.abs(q)
  end
  return v * stack
end

function onObjectLeaveContainer(container, leave_object)
  if container.getGUID() == COUNT_BAG then
    containedObjectValues[leave_object.guid] = nil
    updateValue()
  end
end

function onCollisionEnter(c)
  if c.collision_object.getGUID() == COUNT_BAG and self.resting then
    v = getValue(c.collision_object)
    containedObjectValues[c.collision_object.getGUID()] = v
    updateValue()
  end
end

function updateValue()
  local totalValue = 0
  for id, val in pairs(containedObjectValues) do
    totalValue = totalValue + val
  end
  if totalValue == nil then totalValue = 0 end
  value = totalValue
  local countBag = getObjectFromGUID(COUNT_BAG)
  if countBag then
      countBag.editButton({index=0, label=tostring(value)})
  end
end

function countItems()
    local countBag = getObjectFromGUID(COUNT_BAG)
    if not countBag then return end
    if isCounting == true then return end
    isCounting = true
    if isLockedUntil == false then
      isLockedBeforeCounting = countBag.getLock()
    end
    local itemsInBag = countBag.getObjects()
    local seenGUIDs = {}
    for index, obj in ipairs(itemsInBag) do
      if containedObjectValues[obj.guid] == nil or seenGUIDs[obj.guid] == true then
        countBag.setLock(true)
        isLockedUntil = os.time() + 2
        countBag.takeObject({
          ['guid'] = obj.guid,
          ['position'] =  {countBag.getPosition().x, countBag.getPosition().y + 4, countBag.getPosition().z}
        })
      end
      seenGUIDs[obj.guid] = true
    end

    for id, val in pairs(containedObjectValues) do
      if seenGUIDs[id] ~= true then
        containedObjectValues[id] = nil
      end
    end
    updateValue()
    isCounting = false
end

function wait(time)
   local start = os.time()
   repeat coroutine.yield(0) until os.time() > start + time
end