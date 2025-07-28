--Global
DECK_GUID = "5495ff"
FAM_GUID = "4e3824"
ABILITY_GUID = "f57c85"
DW_GUID = "4d0534"
DW_ZONE = {"6419cc"}
LEG_GUID = "221bc2"
LEG_ZONE = {"9e7cc0"}
SD1_GUID = "095d46"
SD2_GUID = "ed32fe"
SD3_GUID = "a29931"
COUNT_BAG = "d04e31"
W_DWZONE = {"d80387"}
R_DWZONE = {"20fa1d"}
P_DWZONE = {"9f91de"}
B_DWZONE = {"8836fc"}
G_DWZONE = {"304d03"}
W_ZONE = {"e61acc"}
R_ZONE = {"8d4eea"}
P_ZONE = {"b743de"}
B_ZONE = {"b47f6b"}
G_ZONE = {"00d014"}
TROPHY_GUID = "d5463c"
TW_ZONE = {"44d207"}
TR_ZONE = {"1d21d6"}
TG_ZONE = {"61e01b"}
TP_ZONE = {"f1ec1e"}
TB_ZONE = {"d6b0e1"}
DISW_ZONE = {"f46c7c"}
CARD_ZONE_GUIDS = {
    "5613be",
    "fcc8e2",
    "41e75e",
    "151370",
    "55832b"
}
TROPHY_ZONES = {"f1ec1e", "d6b0e1", "1d21d6", "61e01b"}

-- Press to shuffle
DISR_ZONE = 'd258e2'
R_ZONE = '8d4eea'
drawZone = nil
discardZone = nil

function onLoad()
    drawZone = getObjectFromGUID(R_ZONE)
    discardZone = getObjectFromGUID(DISR_ZONE)
end


function refillDeck()
    discardZone = getObjectFromGUID(DISR_ZONE)
    discardPile = discardZone.getObjects()

    for _, object in ipairs(discardPile) do
        if #discardZone.getObjects() >= 1 then
            object.setPosition(drawZone.getPosition())
            object.flip()
            object.shuffle()
        end
    end
end

-- Press to Refill
DECK_GUID = Global.getVar('DECK_GUID')
CARD_ZONE_GUIDS = Global.getTable('CARD_ZONE_GUIDS') 

function onLoad()
    cardZones = {}
    for _, guid in ipairs(CARD_ZONE_GUIDS) do
        local zone = getObjectFromGUID(guid)
        table.insert(cardZones, zone)
    end

    deck = getObjectFromGUID(DECK_GUID)
end

function refillCards()
    for _, zone in ipairs(cardZones) do
        if #zone.getObjects() == 0 then
            deck.takeObject({flip=true, position=zone.getPosition()})
        end
    end
end

--Custom Assetbundle (table)
function onLoad()
    self.interactable=false
end

--Legends Deck
function onLoad()
    self.shuffle()
end

--Studd Spellslammer
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Studd Spellslammer and The Juice", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Venture the Party Dragon
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Venture the Party Dragon", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Snotia The Viscount
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Snotia the Viscous Viscountess", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Roachsauce
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Roachsauce: Purgatory's Playboy", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Mr Lucky
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Mr. Lucky and the Charms", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--McRavey
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="McRavey the Highland Magus", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Joan of Spark
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Joan of Spark", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--The Game Over Lord
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="The Game Over Lord", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Hellish Huffman
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Hellish Huffman and his Band of Rage", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Dungstar
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Dungstar the Poo Pope", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Ball of Cthulu
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Ball of Cthulu", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Murdershroom
function onLoad()
    self.interactable=false
end

--Pleasure Palace
function onLoad()
    self.interactable=false
end

--Press when u kill someone
function getTrophy()
   local trophy = getObjectFromGUID("67c0f8")
    msg = "Mama.... Just killed a man..."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
    
    trophy.setPosition({39.66,1.34,-20.92})
   
end

--Press wehn u kill somone
function getTrophy()
   local trophy = getObjectFromGUID("67c0f8")
    msg = "KILLING SPREE"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
    
    trophy.setPosition({.85, 1.34, -20.92})
   
end

-- Press when u kill someone
function getTrophy()
   local trophy = getObjectFromGUID("67c0f8")
    msg = "Don't mind me I'm just better than you"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
    
    trophy.setPosition({-31.72, 1.34, 20.18})
   
end

--Press when u kill someone
function getTrophy()
   local trophy = getObjectFromGUID("67c0f8")
        msg = "Can you just stay dead already?"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
    
    trophy.setPosition({7.30, 1.34, 20.53})
   
end

--Press when u kill someone
function getTrophy()
   local trophy = getObjectFromGUID("67c0f8")
    msg = "And that's the way the cookie crumbles!"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
    
    trophy.setPosition({38.84, 1.34, 16.83})
   
end

--Press when you die
COUNT_BAG = Global.getVar("COUNT_BAG")
R_DWZONE = Global.getTable('R_DWZONE') 

function onLoad()
    dRZone = {}
    for _, guid in ipairs(R_DWZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(dRZone, zone)
    end

    bag = getObjectFromGUID(COUNT_BAG)
end


function dWToken()
       for _, zone in ipairs(dRZone) do
        msg = "Bring out your dead!"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
        if #zone.getObjects() == 0 then
            bag.takeObject({rotation = {0,180,180}, position = {-19.91, 2.00, -27.39}}) else
        if #zone.getObjects() == 1 then
            bag.takeObject({rotation = {0,180,180}, position = {-18.04, 2.00, -27.39}}) else
        if #zone.getObjects() == 2 then
            bag.takeObject({rotation = {0,180,180}, position = {-16.13, 2.00, -27.39}}) else
        if #zone.getObjects() == 3 then
            bag.takeObject({rotation = {0,180,180}, position = {-14.26, 2.00, -27.44}}) else
        if #zone.getObjects() == 4 then
            bag.takeObject({rotation = {0,180,180}, position = {-12.43, 2.00, -27.43}}) else
        if #zone.getObjects() == 5 then
            bag.takeObject({rotation = {0,180,180}, position = {-10.56, 2.00, -27.47}}) else
        if #zone.getObjects() == 6 then
            bag.takeObject({rotation = {0,180,180}, position = {-19.89, 2.00, -29.51}}) else
        if #zone.getObjects() == 7 then
            bag.takeObject({rotation = {0,180,180}, position = {-18.04, 2.00, -29.49}}) else
        if #zone.getObjects() == 8 then
            bag.takeObject({rotation = {0,180,180}, position = {-16.17, 2.00, -29.47}}) else
        if #zone.getObjects() == 9 then
            bag.takeObject({rotation = {0,180,180}, position = {-14.31, 2.00, -29.50}}) else
        if #zone.getObjects() == 10 then
            bag.takeObject({rotation = {0,180,180}, position = {-12.44, 2.00, -29.50}}) else
        if #zone.getObjects() == 11 then
            bag.takeObject({rotation = {0,180,180}, position = {-10.59, 2.00, -29.53}}) else
        if #zone.getObjects() >= 12 then
            msg = "I know who's NOT going to win"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
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
end
end 
end
end

--Press when you die
COUNT_BAG = Global.getVar("COUNT_BAG")
W_DWZONE = Global.getTable('W_DWZONE') 

function onLoad()
    dWZone = {}
    for _, guid in ipairs(W_DWZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(dWZone, zone)
    end

    bag = getObjectFromGUID(COUNT_BAG)
end


function dWToken()
       for _, zone in ipairs(dWZone) do
        msg = "Screw you guys! I'm going home."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
        if #zone.getObjects() == 0 then
            bag.takeObject({rotation = {0,180,180}, position = {19.21, 2.00, -27.48}}) else
        if #zone.getObjects() == 1 then
            bag.takeObject({rotation = {0,180,180}, position = {21.08, 2.00, -27.49}}) else
        if #zone.getObjects() == 2 then
            bag.takeObject({rotation = {0,180,180}, position = {23.00, 2.00, -27.49}}) else
        if #zone.getObjects() == 3 then
            bag.takeObject({rotation = {0,180,180}, position = {24.86, 2.00, -27.53}}) else
        if #zone.getObjects() == 4 then
            bag.takeObject({rotation = {0,180,180}, position = {26.69, 2.00, -27.53}}) else
        if #zone.getObjects() == 5 then
            bag.takeObject({rotation = {0,180,180}, position = {28.56, 2.00, -27.56}}) else
        if #zone.getObjects() == 6 then
            bag.takeObject({rotation = {0,180,180}, position = {19.23, 2.00, -29.61}}) else
        if #zone.getObjects() == 7 then
            bag.takeObject({rotation = {0,180,180}, position = {21.08, 2.00, -29.59}}) else
        if #zone.getObjects() == 8 then
            bag.takeObject({rotation = {0,180,180}, position = {22.95, 2.00, -29.56}}) else
        if #zone.getObjects() == 9 then
            bag.takeObject({rotation = {0,180,180}, position = {24.81, 2.00, -29.60}}) else
        if #zone.getObjects() == 10 then
            bag.takeObject({rotation = {0,180,180}, position = {26.69, 2.00, -29.60}}) else
        if #zone.getObjects() == 11 then
            bag.takeObject({rotation = {0,180,180}, position = {28.54, 2.00, -29.62}}) else
        if #zone.getObjects() >= 12 then
            msg = "Dude you really suck..."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
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
end
end 
end
end

--Press when you die
COUNT_BAG = Global.getVar("COUNT_BAG")
P_DWZONE = Global.getTable('P_DWZONE') 

function onLoad()
    dPZone = {}
    for _, guid in ipairs(P_DWZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(dPZone, zone)
    end

    bag = getObjectFromGUID(COUNT_BAG)
end


function dWToken()
       for _, zone in ipairs(dPZone) do
        msg = "Don't Fear the Reaper"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
        if #zone.getObjects() == 0 then
            bag.takeObject({rotation = {0,90,180}, position = {45.31, 2.00, -3.84}}) else
        if #zone.getObjects() == 1 then
            bag.takeObject({rotation = {0,90,180}, position = {45.26, 2.00, -1.91}}) else
        if #zone.getObjects() == 2 then
            bag.takeObject({rotation = {0,90,180}, position = {45.28, 2.00, -0.03}}) else
        if #zone.getObjects() == 3 then
            bag.takeObject({rotation = {0,90,180}, position = {45.25, 2.00, 1.83}}) else
        if #zone.getObjects() == 4 then
            bag.takeObject({rotation = {0,90,180}, position = {45.25, 2.00, 3.66}}) else
        if #zone.getObjects() == 5 then
            bag.takeObject({rotation = {0,90,180}, position = {45.28, 2.00, 5.54}}) else
        if #zone.getObjects() == 6 then
            bag.takeObject({rotation = {0,90,180}, position = {47.33, 2.00, -3.80}}) else
        if #zone.getObjects() == 7 then
            bag.takeObject({rotation = {0,90,180}, position = {47.34, 2.00, -1.95}}) else
        if #zone.getObjects() == 8 then
            bag.takeObject({rotation = {0,90,180}, position = {47.34, 2.00, -0.07}}) else
        if #zone.getObjects() == 9 then
            bag.takeObject({rotation = {0,90,180}, position = {47.32, 2.00, 1.78}}) else
        if #zone.getObjects() == 10 then
            bag.takeObject({rotation = {0,90,180}, position = {47.32, 2.00, 3.66}}) else
        if #zone.getObjects() == 11 then
            bag.takeObject({rotation = {0,90,180}, position = {47.35, 2.00, 5.51}}) else
        if #zone.getObjects() >= 12 then
            msg = "Wow. Just wow."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
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
end
end 
end
end

--Press when you die
COUNT_BAG = Global.getVar("COUNT_BAG")
B_DWZONE = Global.getTable('B_DWZONE') 

function onLoad()
    dBZone = {}
    for _, guid in ipairs(B_DWZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(dBZone, zone)
    end

    bag = getObjectFromGUID(COUNT_BAG)
end


function dWToken()
       for _, zone in ipairs(dBZone) do
        msg = "Well that wasn't very nice..."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
        if #zone.getObjects() == 0 then
            bag.takeObject({rotation = {0,0,180}, position = {27.93, 2.00, 27.61}}) else
        if #zone.getObjects() == 1 then
            bag.takeObject({rotation = {0,0,180}, position = {26.02, 2.00, 27.55}}) else
        if #zone.getObjects() == 2 then
            bag.takeObject({rotation = {0,0,180}, position = {24.14, 2.00, 27.58}}) else
        if #zone.getObjects() == 3 then
            bag.takeObject({rotation = {0,0,180}, position = {22.27, 2.00, 27.56}}) else
        if #zone.getObjects() == 4 then
            bag.takeObject({rotation = {0,0,180}, position = {20.42, 2.00, 27.58}}) else
        if #zone.getObjects() == 5 then
            bag.takeObject({rotation = {0,0,180}, position = {18.57, 2.00, 27.57}}) else
        if #zone.getObjects() == 6 then
            bag.takeObject({rotation = {0,0,180}, position = {27.89, 2.00, 29.63}}) else
        if #zone.getObjects() == 7 then
            bag.takeObject({rotation = {0,0,180}, position = {26.05, 2.00, 29.63}}) else
        if #zone.getObjects() == 8 then
            bag.takeObject({rotation = {0,0,180}, position = {24.18, 2.00, 29.64}}) else
        if #zone.getObjects() == 9 then
            bag.takeObject({rotation = {0,0,180}, position = {22.32, 2.00, 29.60}}) else
        if #zone.getObjects() == 10 then
            bag.takeObject({rotation = {0,0,180}, position = {20.45, 2.00, 29.61}}) else
        if #zone.getObjects() == 11 then
            bag.takeObject({rotation = {0,0,180}, position = {18.60, 2.00, 29.64}}) else
        if #zone.getObjects() >= 12 then
            msg = "It smells like targeting in here"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
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
end
end 
end
end

--Press when you die
COUNT_BAG = Global.getVar("COUNT_BAG")
G_DWZONE = Global.getTable('G_DWZONE') 

function onLoad()
    dGZone = {}
    for _, guid in ipairs(G_DWZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(dGZone, zone)
    end

    bag = getObjectFromGUID(COUNT_BAG)
end


function dWToken()
       for _, zone in ipairs(dGZone) do
        msg = "In Memoriam"
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
        if #zone.getObjects() == 0 then
            bag.takeObject({rotation = {0,0,180}, position = {-11.20, 2.00, 27.52}}) else
        if #zone.getObjects() == 1 then
            bag.takeObject({rotation = {0,0,180}, position = {-13.12, 2.00, 27.48}}) else
        if #zone.getObjects() == 2 then
            bag.takeObject({rotation = {0,0,180}, position = {-15.00, 2.00, 27.51}}) else
        if #zone.getObjects() == 3 then
            bag.takeObject({rotation = {0,0,180}, position = {-16.85, 2.00, 27.47}}) else
        if #zone.getObjects() == 4 then
            bag.takeObject({rotation = {0,0,180}, position = {-18.66, 2.00, 27.51}}) else
        if #zone.getObjects() == 5 then
            bag.takeObject({rotation = {0,0,180}, position = {-20.56, 2.00, 27.53}}) else
        if #zone.getObjects() == 6 then
            bag.takeObject({rotation = {0,0,180}, position = {-11.24, 2.00, 29.54}}) else
        if #zone.getObjects() == 7 then
            bag.takeObject({rotation = {0,0,180}, position = {-13.09, 2.00, 29.56}}) else
        if #zone.getObjects() == 8 then
            bag.takeObject({rotation = {0,0,180}, position = {-14.96, 2.00, 29.56}}) else
        if #zone.getObjects() == 9 then
            bag.takeObject({rotation = {0,0,180}, position = {-16.82, 2.00, 29.53}}) else
        if #zone.getObjects() == 10 then
            bag.takeObject({rotation = {0,0,180}, position = {-18.69, 2.00, 29.53}}) else
        if #zone.getObjects() == 11 then
            bag.takeObject({rotation = {0,0,180}, position = {-20.54, 2.00, 29.56}}) else
        if #zone.getObjects() >= 12 then
            msg = "You're killing me smalls..."
            rgb = {r=1, g=0, b=0}
            broadcastToAll(msg, rgb)
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
end
end 
end
end

--Press to Shuffle
DISW_ZONE = 'f46c7c'
W_ZONE = 'e61acc'
drawZone = nil
discardZone = nil

function onLoad()
    drawZone = getObjectFromGUID(W_ZONE)
    discardZone = getObjectFromGUID(DISW_ZONE)
end


function refillDeck()
    discardZone = getObjectFromGUID(DISW_ZONE)
    discardPile = discardZone.getObjects()

    for _, object in ipairs(discardPile) do
        if #discardZone.getObjects() >= 1 then
            object.setPosition(drawZone.getPosition())
            object.flip()
            object.shuffle()
        end
    end
end

--Press to Shuffle
DISP_ZONE = '537759'
P_ZONE = 'b743de'
drawZone = nil
discardZone = nil

function onLoad()
    drawZone = getObjectFromGUID(P_ZONE)
    discardZone = getObjectFromGUID(DISP_ZONE)
end


function refillDeck()
    discardZone = getObjectFromGUID(DISP_ZONE)
    discardPile = discardZone.getObjects()

    for _, object in ipairs(discardPile) do
        if #discardZone.getObjects() >= 1 then
            object.setPosition(drawZone.getPosition())
            object.flip()
            object.shuffle()
        end
    end
end

--Press to Shuffle
DISB_ZONE = 'cb514e'
B_ZONE = 'b47f6b'
drawZone = nil
discardZone = nil

function onLoad()
    drawZone = getObjectFromGUID(B_ZONE)
    discardZone = getObjectFromGUID(DISB_ZONE)
end


function refillDeck()
    discardZone = getObjectFromGUID(DISB_ZONE)
    discardPile = discardZone.getObjects()

    for _, object in ipairs(discardPile) do
        if #discardZone.getObjects() >= 1 then
            object.setPosition(drawZone.getPosition())
            object.flip()
            object.shuffle()
        end
    end
end

--Press to Shuffle
DISG_ZONE = 'f345b9'
G_ZONE = '00d014'
drawZone = nil
discardZone = nil

function onLoad()
    drawZone = getObjectFromGUID(G_ZONE)
    discardZone = getObjectFromGUID(DISG_ZONE)
end


function refillDeck()
    discardZone = getObjectFromGUID(DISG_ZONE)
    discardPile = discardZone.getObjects()

    for _, object in ipairs(discardPile) do
        if #discardZone.getObjects() >= 1 then
            object.setPosition(drawZone.getPosition())
            object.flip()
            object.shuffle()
        end
    end
end

--Counting Bag
-- Counting bag by Sai (saizai)

-- Based on:
--- MrStump's Counting Bowl  https://steamcommunity.com/sharedfiles/filedetails/?id=946300090
--- Peerless's Finite Bags https://steamcommunity.com/sharedfiles/filedetails/?id=775629532
--- MrStump's Memory Bag 2.0 https://steamcommunity.com/sharedfiles/filedetails/?id=953770080

-- This bag will automatically fix GUIDs of all items added to ensure they're unique. This means that if a non-unique GUID object is added, it'll be spit back out briefly so that TTS assigns it a new GUID and has it fall back in.

-- Item values are checked in the following strict order of precedence:
--- 1. value variable
--- 2. value tag
--- 3. explicit item name
--- 4. expression based item name
-- The first one that returns a value will get used, and anything later in the list ignored.

-- Any object with e.g. "value = 123" in its local variables (e.g. its script) will be counted
valueVariable = "value"

-- Any object with e.g. "Value: 123" on a separate line in its description will be counted.
-- Must be entered as a Lua pattern with capture on the number, i.e. (%d+), and no other captures.
valueDescription = "Value[%p%s]+(%d+)[^%d%a]*"

--Table of items which can be counted in this Bag
--Each entry has 2 things to enter
  --a name (what is in the name field of that object)
  --a value (how much it is worth)
--A number in the items description will override the number entry in this table
itemValues = {
  ["Coin 1"] = 1,
  ["Coin 5"] = 5,
  --["Name3"] = 2,
  --["Name4"] = 31,
  --Add more entries as needed
  --Remove the -- from before a line for the script to use it
}

-- Items with matching names will be counted
-- Must be entered as a Lua pattern with capture on the number, i.e. (%d+), and no other captures.
valueName = "Coin[%p%s]+(%d+)[^%d%a]*"


---- End of code to edit
value = 0 -- this should make it work with nested bags of itself
containedObjectValues = { }

checkFrequency = 1 -- In seconds, wait this long before checking the value again.
isActive = false -- This just checks that the coroutine has been started.  Mostly just for debugging
isRunning = false --it's a redundant declaration but here is our routine isRunning var.  Far more useful than isActive
isCounting = false
isLockedBeforeCounting = false
isLockedUntil = false

function updateSave()
  local data_to_save = {["containedObjectValues"] = containedObjectValues}
  saved_data = JSON.encode(data_to_save)
  self.script_state = saved_data
  return saved_data
end

function onSave()
  saved_data = updateSave()
  return saved_data
end

function onload(saved_data)
  if saved_data ~= "" then
    local loaded_data = JSON.decode(saved_data)
    containedObjectValues = loaded_data.containedObjectValues
  else
    containedObjectValues = {}
  end

  -- Sets position/color for the value display, spawns it
  self.createButton({
    label="", click_function="none", function_owner=self,
    position={0,0.4,-2.5}, rotation={0,180,0}, height=00, width=0,
    font_color={1,1,1}, font_size=500
  })
  updateValue()
  if not isActive then
    isActive = true
    startLuaCoroutine(self, "updateBag")
  end
end

--Kick off an update() like coroutine
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
  isRunning = false --Tell the coroutine it's allowed to die
end

function getValue(object)
  -- note: pcall returns first value as *true* if function succeeds w/out errors
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
  if container == self then
    containedObjectValues[leave_object.guid] = nil
    updateValue()
  end
end

function onCollisionEnter(c)
  if self.resting then
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
  value = totalValue -- for nested bags
  self.editButton({index=0, label=value})
end

 -- Counts total value of items in bag
function countItems()
    if isCounting == true then return end
    isCounting = true
    if isLockedUntil == false then
      isLockedBeforeCounting = self.getLock()
    end
    local itemsInBag = self.getObjects()
    local seenGUIDs = {}
    --Returns a Table with the keys “name”, “guid”, and “index”, not actual objects
    for index, obj in ipairs(itemsInBag) do
      -- this object might have entered without triggering collision, e.g. dragging in multiple objects. spit it out above so it falls back in and triggers that.
      -- GUIDs aren't unique. If taken from an infinite bag, then we can easily have multiple contained objects with the same GUID. So we spit the duplicate out, which makes it gain a real GUID.

      -- realobj = getObjectFromGUID(obj.guid) -- can't get this because it's not in the world yet
      if containedObjectValues[obj.guid] == nil or seenGUIDs[obj.guid] == true then
        self.setLock(true)
        isLockedUntil = os.time() + 2
        self.takeObject({
          ['guid'] = obj.guid,  -- there might be multiple, and it won't re-GUID unless there's a conflict on the table, so just spit out the conflict
          -- ['index'] = index - 1,
          ['position'] =  {self.getPosition().x, self.getPosition().y + 4, self.getPosition().z}
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

 -- Coroutine delay, in seconds
 function wait(time)
   local start = os.time()
   repeat coroutine.yield(0) until os.time() > start + time
 end

-- Setup Legends Deck
LEG_GUID = Global.getVar('LEG_GUID')
LEG_ZONE = Global.getTable('LEG_ZONE') 

function onLoad()
    lZone = {}
    for _, guid in ipairs(LEG_ZONE) do
        local zone = getObjectFromGUID(guid)
        table.insert(lZone, zone)
    end

    deck = getObjectFromGUID(LEG_GUID)
end


function legends()
       for _, zone in ipairs(lZone) do
        if #getSeatedPlayers() == 2 then
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()}) else
        if #getSeatedPlayers() == 3 then
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()}) else
        if #getSeatedPlayers() == 4 then
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()}) else
        if #getSeatedPlayers() == 5 then
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
            deck.takeObject({position = zone.getPosition()})
        end
    end
end
end
end

    destroyObject(self)
end

-- Sir Kitty
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Sir Kitty Purrington", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

-- Fey Ticklebottom
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Fey Ticklebottom", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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

--Abraca
function onLoad()
	if (self.getPosition().x < 55) then
		self.createButton({tooltip="Abraca Labrador & Hocus Porkus", label="Select character", click_function="selChar", function_owner = self, position={0,0.22,1.25}, rotation={0,0,0}, width=1150, height=350, font_size=160})
	end
end


function selChar(source, player)
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


if objects != nil then
for _, v in ipairs(objects) do
if string.find(v.name, string1) then
table.insert(result, v.guid)
end
end

if objects != nil then
for _, c in ipairs(objects) do
if string.find(c.name, string2) then
table.insert(result2, c.guid)
end
end


if result != nil then
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



if result != nil then
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