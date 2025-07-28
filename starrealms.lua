function attachExplorersToScript()
    local explorers = {
        "d74723", "7a8b3a", "ec5fee", "184d05", "9e3a4a", "75c889", 
        "590118", "3b45f2", "ec5fee", "2d36ab", "96348b", "54fb3e", 
        "909298", "ced189", "5c436d", "d60d4d", "081306", "aa8916", 
        "12294a", "12e169"
    }

    local scriptTag = "explorer"

    for _, guid in ipairs(explorers) do
        local object = getObjectFromGUID(guid)
        if object ~= nil then
            object.addTag(scriptTag)
        else
            print("Object with GUID " .. guid .. " not found.")
        end
    end
end

function onUpdate()
    moveExplorersFromScrapToExplorerDeck()
end

function moveExplorersFromScrapToExplorerDeck()
    local scrapPile = getObjectFromGUID("b40541")
    local explorerDeck = getObjectFromGUID("a54593")
    local scriptTag = "explorer"

    if scrapPile == nil or explorerDeck == nil then
        print("Scrap pile or explorer deck not found.")
        return
    end

    local scrapObjects = scrapPile.getObjects()

    for _, scrapObject in ipairs(scrapObjects) do
        if scrapObject.hasTag(scriptTag) then
            scrapObject.setPositionSmooth(explorerDeck.getPosition(), false, true)
        end
    end
end

function onSave()
    save_data = {
        ["gameActive"] = gameActive
    }
    return JSON.encode(save_data)
end

-- Define player zones
local playerZones = {
    playerOne = {colour = "Green"},
    playerTwo = {colour = "Orange"},
    playerThree = {colour = "Blue"},
    playerFour = {
        colour = "Red",
        gambitZones = {
            getObjectFromGUID("452f6d"),
            getObjectFromGUID("7d82a2"),
            getObjectFromGUID("736b90"),
            getObjectFromGUID("f1e912")
        },
        missionZones = {
            getObjectFromGUID("46583e"),
            getObjectFromGUID("70e503"),
            getObjectFromGUID("b14f19")
        }
    }
}

-- Assign Gambit and Mission zones to each player
function setupZones()
    for player, data in pairs(playerZones) do
        if not data.gambitZones or #data.gambitZones == 0 then
            data.gambitZones = {
                getObjectFromGUID("G1_GUID_" .. player),
                getObjectFromGUID("G2_GUID_" .. player),
                getObjectFromGUID("G3_GUID_" .. player),
                getObjectFromGUID("G4_GUID_" .. player)
            }
        end
        if not data.missionZones or #data.missionZones == 0 then
            data.missionZones = {
                getObjectFromGUID("M1_GUID_" .. player),
                getObjectFromGUID("M2_GUID_" .. player),
                getObjectFromGUID("M3_GUID_" .. player)
            }
        end
    end
end

-- Function to toggle visibility of zones
function toggleZoneVisibility(player, zoneType, zoneIndex)
    local zone = playerZones[player][zoneType][zoneIndex]
    if zone == nil then
        print("Zone not found for player " .. player .. " and zone type " .. zoneType)
        return
    end

    local isVisible = zone.getVar("isVisible") or false
    zone.setVar("isVisible", not isVisible)

    if isVisible then
        zone.hide()
    else
        zone.show()
    end
end

-- Add buttons for toggling zones
function addToggleButtons()
    for player, data in pairs(playerZones) do
        for i = 1, 4 do
            local gambitButton = {
                click_function = "toggleGambit" .. i .. player,
                function_owner = self,
                label = "G" .. i,
                position = {x = 0, y = 0.2, z = 0.6 + (i - 1) * 0.3},
                width = 300,
                height = 300,
                font_size = 100,
                tooltip = "Toggle Gambit Zone " .. i
            }
            self.createButton(gambitButton)
            _G["toggleGambit" .. i .. player] = function(_, color)
                if color == data.colour then
                    toggleZoneVisibility(player, "gambitZones", i)
                end
            end
        end

        for i = 1, 3 do
            local missionButton = {
                click_function = "toggleMission" .. i .. player,
                function_owner = self,
                label = "M" .. i,
                position = {x = 1, y = 0.2, z = 0.6 + (i - 1) * 0.3},
                width = 300,
                height = 300,
                font_size = 100,
                tooltip = "Toggle Mission Zone " .. i
            }
            self.createButton(missionButton)
            _G["toggleMission" .. i .. player] = function(_, color)
                if color == data.colour then
                    toggleZoneVisibility(player, "missionZones", i)
                end
            end
        end
    end
end

-- Call setup functions on load
function onLoad(saved_data)
    load_data = JSON.decode(saved_data)
    tableHeight = 2.5

    gameActive = load_data and load_data["gameActive"] or false

    -- Info for players
    playerOne = {
        deckArea = getObjectFromGUID("d4ecc9"),
        discardArea = getObjectFromGUID("53615a"),
        playArea = getObjectFromGUID("f06ccc"),
        colour = "Green",
        endButton = {
            click_function = "endPlayerOne",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "End Turn",
            font_size = 80,
            rotation = {0,180,0}
        },
        drawButton = {
            click_function = "drawPlayerOne",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "Draw 1",
            font_size = 80,
            rotation = {0,180,0}
        }
    }
    playerTwo = {
        deckArea = getObjectFromGUID("7385ea"),
        discardArea = getObjectFromGUID("ea0650"),
        playArea = getObjectFromGUID("6a022b"),
        colour = "Orange",
        endButton = {
            click_function = "endPlayerTwo",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "End Turn",
            font_size = 80,
            rotation = {0,180,0}
        },
        drawButton = {
            click_function = "drawPlayerTwo",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "Draw 1",
            font_size = 80,
            rotation = {0,180,0}
        }
    }
    playerThree = {
        deckArea = getObjectFromGUID("50503c"),
        discardArea = getObjectFromGUID("bafc2e"),
        playArea = getObjectFromGUID("2d2f47"),
        colour = "Blue",
        endButton = {
            click_function = "endPlayerThree",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "End Turn",
            font_size = 80,
            rotation = {0,180,0}
        },
        drawButton = {
            click_function = "drawPlayerThree",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "Draw 1",
            font_size = 80,
            rotation = {0,180,0}
        }
    }
    playerFour = {
        deckArea = getObjectFromGUID("66c2b8"),
        discardArea = getObjectFromGUID("49c117"),
        playArea = getObjectFromGUID("1db07f"),
        colour = "Red",
        endButton = {
            click_function = "endPlayerFour",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "End Turn",
            font_size = 80,
            rotation = {0,180,0}
        },
        drawButton = {
            click_function = "drawPlayerFour",
            position = { x=0, y=-0.3, z=-0.8 },
            height = 125,
            width = 375,
            label = "Draw 1",
            font_size = 80,
            rotation = {0,180,0}
        }
    }

    -- Set deck/discard positions for players
    for i,v in pairs({playerOne, playerTwo, playerThree, playerFour}) do
        local t = v.discardArea.getPosition()
        v.discardPos = {t[1], tableHeight+2.4, t[3]}
        local t = v.deckArea.getPosition()
        v.deckPos = {t[1], tableHeight, t[3]}
    end

    -- Lock the board object if it exists
    local board = getObjectFromGUID("a03b53")
    if board ~= nil then
        board.lock()
        -- Set the board as the table
        self.setTable(board)
    end

    -- Create the buttons for each player
    getObjectFromGUID("53615a").createButton(playerOne.endButton)
    getObjectFromGUID("d4ecc9").createButton(playerOne.drawButton)
    getObjectFromGUID("ea0650").createButton(playerTwo.endButton)
    getObjectFromGUID("7385ea").createButton(playerTwo.drawButton)
    getObjectFromGUID("bafc2e").createButton(playerThree.endButton)
    getObjectFromGUID("50503c").createButton(playerThree.drawButton)
    getObjectFromGUID("49c117").createButton(playerFour.endButton)
    getObjectFromGUID("66c2b8").createButton(playerFour.drawButton)

    -- Hide start button if game is already started
    if gameActive then
        UI.hide("startButton")
    end

    -- Build trade zone arrays + locks
    tradeDeckGUID = "758e53"
    tradeZoneGUIDs = { "baef34", "9da072", "1f6752", "21378f", "82d501" }
    tradeZoneLocks = {}
    tradeZones = {}

    for i,v in pairs(tradeZoneGUIDs) do
        table.insert(tradeZoneLocks, {v = false})
        table.insert(tradeZones, getObjectFromGUID(v))
    end

    setupZones()
    addToggleButtons()
end

-- Catch numpad 1 + 3 for end/draw.
function onScriptingButtonDown(index, player_color)
  if(index == 1) then
    if(player_color == "Green") then
      drawPlayerOne(index, player_color)
    elseif(player_color == "Orange") then
      drawPlayerTwo(index, player_color)
    elseif(player_color == "Blue") then
      drawPlayerThree(index, player_color)
    elseif(player_color == "Red") then
      drawPlayerFour(index, player_color)
    end
  end
  if(index == 3) then
    if(player_color == "Green") then
      endPlayerOne(index, player_color)
    elseif(player_color == "Orange") then
      endPlayerTwo(index, player_color)
    elseif(player_color == "Blue") then
      endPlayerThree(index, player_color)
    elseif(player_color == "Red") then
      endPlayerFour(index, player_color)
    end
  end
end

-- Button Functions
function endPlayerOne(_, playerColour)
  if(playerColour ~= playerOne.colour) then return end
  discardHand(playerOne)
  discardPlayed(playerOne)
  Wait.time(function() drawCards(playerOne, 5) end, 0.5)
end

function drawPlayerOne(_, playerColour)
  if(playerColour ~= playerOne.colour) then return end
  drawCards(playerOne, 1)
end

function endPlayerTwo(_, playerColour)
  if(playerColour ~= playerTwo.colour) then return end
  discardHand(playerTwo)
  discardPlayed(playerTwo)
  Wait.time(function() drawCards(playerTwo, 5) end, 0.5)
end

function drawPlayerTwo(_, playerColour)
  if(playerColour ~= playerTwo.colour) then return end
  drawCards(playerTwo, 1)
end

function endPlayerThree(_, playerColour)
  if(playerColour ~= playerThree.colour) then return end
  discardHand(playerThree)
  discardPlayed(playerThree)
  Wait.time(function() drawCards(playerThree, 5) end, 0.5)
end

function drawPlayerThree(_, playerColour)
  if(playerColour ~= playerThree.colour) then return end
  drawCards(playerThree, 1)
end

function endPlayerFour(_, playerColour)
  if(playerColour ~= playerFour.colour) then return end
  discardHand(playerFour)
  discardPlayed(playerFour)
  Wait.time(function() drawCards(playerFour, 5) end, 0.5)
end

function drawPlayerFour(_, playerColour)
  if(playerColour ~= playerFour.colour) then return end
  drawCards(playerFour, 1)
end

-- One-time start-of-game
function startGame(clicker)
  if(gameActive) then return end
  local tradeDeck = getObjectFromGUID(tradeDeckGUID).getObjects()[1]
  local oneDeck = playerOne.deckArea.getObjects()[1]
  local twoDeck = playerTwo.deckArea.getObjects()[1]
  local threeDeck = playerThree.deckArea.getObjects()[1]
  local fourDeck = playerFour.deckArea.getObjects()[1]

  if(tradeDeck == nil or oneDeck == nil or twoDeck == nil or threeDeck == nil or fourDeck == nil) then
    broadcastToAll("Player or Trade Deck is not present.")
    return
  end
  gameActive = true
  UI.hide("startButton")
  tradeDeck.shuffle()
  oneDeck.shuffle()
  twoDeck.shuffle()
  threeDeck.shuffle()
  fourDeck.shuffle()

  for i,v in pairs(tradeZones) do
    Wait.time(function() fillTradeZone(v) end, 0.5)
  end

  local numPlayers = countActivePlayers()
  local oneCards = (clicker.color == playerOne.colour) and 3 or 5
  local twoCards = (clicker.color == playerTwo.colour) and 3 or 5
  local threeCards = (clicker.color == playerThree.colour) and 3 or 5
  local fourCards = (clicker.color == playerFour.colour) and 3 or 5

  Wait.time(function() drawCards(playerOne, oneCards) end, 0.75)
  Wait.time(function() drawCards(playerTwo, twoCards) end, 0.75)
  Wait.time(function() drawCards(playerThree, threeCards) end, 0.75)
  Wait.time(function() drawCards(playerFour, fourCards) end, 0.75)
end

-- Fills a specified zone if no card exists & if trade deck exists
function fillTradeZone(zone)
    local goods = zone.getObjects()
    local tradeDeck = getObjectFromGUID(tradeDeckGUID).getObjects()[1]
    if (#goods == 0 and tradeDeck ~= nil) then
      local location = zone.getPosition()
      local board = getObjectFromGUID("a03b53")
      local boardHeight = 0
      if board ~= nil then
        boardHeight = board.getPosition()[2]
      end
      local heightOffset = 3 + boardHeight
      local takeParams = {
        position = {location[1], tableHeight + heightOffset, location[3]},
        flip = true,
        smooth = true
      }
      if (tradeDeck.getQuantity() > 1) then
        tradeDeck.takeObject(takeParams)
      else
        tradeDeck.flip()
        tradeDeck.setPositionSmooth(takeParams.position)
      end
    end
end

-- Monitors trade row to repopulate
function onObjectLeaveScriptingZone(zone, leave_object)
  if(not gameActive) then return end
  for i,v in pairs(tradeZones) do
    if(v == zone and leave_object.held_by_color ~= nil and not tradeZoneLocks[v]) then
      tradeZoneLocks[v] = true
      Wait.condition(function() tradeZoneLocks[v] = false; fillTradeZone(zone) end,
          function() return leave_object.held_by_color == nil end)
      return
    end
  end
end

-- Toss a player's hand
function discardHand(player)
  local playerCards = getHand(player)
  for i,v in pairs(playerCards) do
    v.use_hands = false
    v.setPositionSmooth(player.discardPos, false, true)
    Wait.time(function() v.use_hands = true end, 0.2)
  end
end

-- Discards all in-play cards except for those turned sideways (Bases)
function discardPlayed(player)
  local playedCards = player.playArea.getObjects()
  local toDiscard = {}

  for i,v in pairs(playedCards) do
    local rotation = v.getRotation()[2]
    if(v.tag == "Deck" or v.tag == "Card" and
        not v.hasTag("NoDiscard")) then
      table.insert(toDiscard, v)
    end
  end

  for i,v in pairs(toDiscard) do
    v.setPositionSmooth(player.discardPos, false, true)
  end
end

-- Draw a Number of cards for chosen player
function drawCards(player, toDeal)
    local deck = player.deckArea.getObjects()[1]
    local handsize = #getHand(player)
    local deckRemains = 0
    if(deck ~= nil) then
        if (deck.getQuantity() ~= -1) then
          deckRemains = deck.getQuantity()
        else deckRemains = 1 end
        deck.deal(toDeal, player.colour)
    end
    if(deckRemains < toDeal and player.discardArea.getObjects()[1] ~= nil) then
        local discards = cycleDiscard(player)
        Wait.condition(function() discards.deal(toDeal-deckRemains, player.colour) end,
          function() return not discards.isSmoothMoving() end, 3)
    end
end

-- Shuffles the discard pile back into the deck area
function cycleDiscard(player)
    local discards = group(player.discardArea.getObjects())[1]
    if(discards ~= nil) then
        discards.flip()
        discards.shuffle()
        discards.setPositionSmooth(player.deckPos, false, true)
    end
    return discards
end

function getHand(player)
    return Player[player.colour].getHandObjects()
end

function countActivePlayers()
  local count = 0
  if playerOne.deckArea.getObjects()[1] ~= nil then
    count = count + 1
  end
  if playerTwo.deckArea.getObjects()[1] ~= nil then
    count = count + 1
  end
  if playerThree.deckArea.getObjects()[1] ~= nil then
    count = count + 1
  end
  if playerFour.deckArea.getObjects()[1] ~= nil then
    count = count + 1
  end
  return count
end

startButton = {
  id = "startButton",
  onClickFunction = "startGame",
  height = 50,
  width = 200,
  fontSize = 32,
  fontStyle = "Bold",
  tooltip = "Player who clicks Start plays first.",
  tooltipPosition = "Below",
  rectAlignment = "UpperCenter",
  offsetXY = {0, -100},
  colors = {"#FFFFFF", "#41ca00"},
  visibility = "All"
}

resetButton = {
  id = "resetButton",
  onClickFunction = "resetBoard",
  height = 50,
  width = 200,
  fontSize = 32,
  fontStyle = "Bold",
  tooltip = "Reset the board to the initial state.",
  tooltipPosition = "Below",
  rectAlignment = "LowerLeft",
  offsetXY = {0, 100},
  colors = {"#FFFFFF", "#FF0000"},
  visibility = "All"
}

function resetBoard(_, _)
    -- Logic to reset the board to initial state goes here
end

function moveExplorer()
    -- Logic to move explorer from scrap pile to explorer pile goes here
end

function onObjectEnterScriptingZone(zone, enter_object)
    if zone.getGUID() == "2cd554" and enter_object.hasTag("explorer") then
      moveExplorer(enter_object)
    end
end

function moveExplorer(explorerObject)
    local explorerDeck = getObjectFromGUID("a54593")
    if explorerDeck ~= nil then
      explorerObject.setPositionSmooth(explorerDeck.getPosition(), false, true)
    else
      print("Explorer deck not found.")
    end
end
