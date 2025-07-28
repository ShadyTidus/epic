# Project Outline: Consolidated Epic Lua Script

This document outlines the structure, functionality, and integration strategy used to create the comprehensive `epic.lua` script for Tabletop Simulator. The primary goal was to consolidate all game logic into a single Global script, combining new mechanics inspired by `starrealms.lua` with existing, working functionalities from your original segmented object scripts (`existingcode.lua`).

---

## 1. Core Principles & Integration Strategy

*   **Centralized Global Script:** All game logic now resides in `epic.lua`, intended to be the sole script in Tabletop Simulator's Global script editor. This improves maintainability, reduces communication overhead between scripts, and simplifies debugging.
*   **Preservation of Existing Logic:** Critical functionalities from `existingcode.lua` (character selection, trophy events, player death events, counting bag) have been directly copied ("lift and shift") into `epic.lua` to ensure their exact original behavior is maintained.
*   **Integration of New Mechanics:** Core game flow elements (game start, player turns, drawing/discarding) have been implemented or refined based on the robust patterns found in `starrealms.lua`.
*   **Data-Driven Design:** Key game data (GUIDs, player zones, character details, event messages/positions) are stored in Lua tables at the top of the script for easy modification and scalability.

---

## 2. Script Structure (`epic.lua`)

The `epic.lua` script is organized into logical sections for clarity and ease of navigation.

### 2.1. GUID Reference Section

This section, located at the very top of the script, centralizes all Global Unique Identifiers (GUIDs) for game objects, decks, bags, and zones. This makes it easy to update GUIDs if objects are replaced in the future.

*   `DECK_GUID`: Main game deck.
*   `FAM_GUID`: Familiar deck.
*   `LEG_GUID`: Legend deck.
*   `ABILITY_GUID`: Ability cards deck.
*   `DW_GUID`: Dead Wizard token bag.
*   `COUNT_BAG`: Counting bag.
*   `TROPHY_GUID`: The Trophy object.
*   `PLAYER_DECKS`: Table mapping player colors to their starting deck GUIDs.
*   `PLAYERS`: Comprehensive table for each player color, including GUIDs for `deckArea`, `discardArea`, `playArea`, and button definitions for "Draw" and "End Turn" (positions and rotations derived from `starrealms.lua`).
*   `CARD_ZONE_GUIDS`: GUIDs for the card lineup zones.
*   `LEG_ZONE`: Legend zone GUID.
*   `DW_ZONES`: Table mapping player colors to their Dead Wizard zone GUIDs.
*   `CHARACTERS`: Table mapping character bag GUIDs to their names and the unique function names that handle their selection logic.
*   `TROPHY_DATA`: Table containing broadcast messages and trophy positions for each player color.
*   `DEATH_EVENT_DATA`: Table containing broadcast messages and Dead Wizard token drop positions for each player color.

### 2.2. Initialization & Setup (`onLoad` function)

The `onLoad` function is the entry point of the script when the game loads. It handles all initial setup.

*   **Game State Loading:** Loads `gameActive` and `containedObjectValues` from saved data.
*   **Zone Initialization:** Populates `cardZones`, `lZone` (Legend Zone), and `dWZone` (Dead Wizard Zones) by retrieving objects from their GUIDs.
*   **UI "Start Game" Button:** Creates a UI button that triggers the `startGame` function. It is hidden if the game is already active.
*   **World Action Buttons:** Spawns a hidden anchor object and creates persistent buttons for "Get Familiar," "Get Legend," "Get Ability," and "Get DW Tokens" on it.
*   **Player-Specific Buttons:** Iterates through the `PLAYERS` table to create "Draw 1," "End Turn," "I Died," and "I Killed" buttons on each player's `deckArea` and `discardArea`. The positioning and rotation of "Draw" and "End Turn" buttons are directly from `starrealms.lua`.
*   **Character Selection Buttons:** **Crucially, this section uses `Wait.time(setupCharacterButtons, 1)` to delay the creation of character selection buttons.** This addresses potential timing issues where character bags might not be fully loaded when `onLoad` first runs. The `setupCharacterButtons` function (detailed below) handles the actual button creation.
*   **Counting Bag Initialization:** Initializes the counting bag's display and starts its update coroutine.

### 2.3. Core Game Mechanics Section

This section contains the primary game flow functions, largely inspired by `starrealms.lua`.

*   `startGame(_, player_color, alt_click)`:
    *   Prevents multiple game starts using `gameActive` flag.
    *   Shuffles the `DECK_GUID` (main deck) and calls `refillCards` to populate the lineup.
    *   Iterates through `PLAYER_DECKS`, shuffles each player's deck, and calls `drawCards` to deal 5 cards to each player (intentional deviation from `starrealms.lua`'s starting player logic).
    *   Hides the "Start Game" UI button.
*   `endTurn(playerColor)`:
    *   Retrieves player data from `PLAYERS` table.
    *   Calls `discardHand` and `discardPlayed`.
    *   Uses `Wait.time` to delay `drawCards` for 5 new cards, allowing discard animations to complete.
*   `drawOne(playerColor)`: Calls `drawCards` to deal a single card to the specified player.
*   `discardHand(player)`: Moves all cards from a player's hand to their `discardArea`.
*   `discardPlayed(player)`: Moves all cards from a player's `playArea` to their `discardArea`. (Note: Intentionally does *not* include the "NoDiscard" tag check present in `starrealms.lua`).
*   `drawCards(player, numCards)`:
    *   Checks remaining cards in the player's deck.
    *   If insufficient, calls `cycleDiscard` to reshuffle the discard pile into a new deck.
    *   Deals the specified number of cards to the player.
*   `cycleDiscard(player)`:
    *   Retrieves all objects from the player's `discardArea`.
    *   Groups them into a new deck object.
    *   Flips, shuffles, and moves the new deck to the player's `deckArea`.
    *   Returns the new deck object.
*   `refillCards()`: Fills empty slots in the `CARD_ZONE_GUIDS` lineup from the `DECK_GUID`.

### 2.4. Game Event Functions Section

These functions handle specific game events, with logic adapted from `existingcode.lua` and refined for the Global script.

*   `dWToken()`:
    *   Retrieves the Dead Wizard token bag (`DW_GUID`) and the Counting Bag (`COUNT_BAG`).
    *   Calculates `4 * #getSeatedPlayers()` tokens.
    *   Takes tokens from the Dead Wizard bag and drops them above the Counting Bag to be counted.
*   `getFamiliars(_, playerColor)`:
    *   Retrieves the Familiar deck (`FAM_GUID`).
    *   Shuffles the deck.
    *   Deals 2 cards to the `playerColor` who clicked the button.
*   `legends()`:
    *   Retrieves the Legend deck (`LEG_GUID`).
    *   Shuffles the deck.
    *   Deals a variable number of Legend cards (3-6) to the `LEG_ZONE` based on the number of seated players.
*   `getAbility(_, playerColor)`:
    *   Retrieves the Ability deck (`ABILITY_GUID`).
    *   Shuffles the deck.
    *   Deals 2 cards to the `playerColor` who clicked the button.
*   `playerDied(playerColor)`:
    *   Retrieves player-specific death message and token positions from `DEATH_EVENT_DATA`.
    *   Broadcasts the death message.
    *   Places a Dead Wizard token from the `COUNT_BAG` into the player's `DW_ZONES` at the next available position.
*   `getTrophy(playerColor)`:
    *   Retrieves player-specific trophy message and position from `TROPHY_DATA`.
    *   Broadcasts the trophy message.
    *   Moves the `TROPHY_GUID` object to the specified position.

### 2.5. Character Selection (Preserved 1-to-1) Section

This crucial section contains the directly copied and uniquely named `selChar` functions from your `existingcode.lua`. Each function's internal logic remains identical to its original source.

*   `selChar_Studd(source, player)`
*   `selChar_Venture(source, player)`
*   `selChar_Snotia(source, player)`
*   `selChar_Roachsauce(source, player)`
*   `selChar_MrLucky(source, player)`
*   `selChar_McRavey(source, player)`
*   `selChar_JoanOfSpark(source, player)`
*   `selChar_GameOverLord(source, player)`
*   `selChar_HellishHuffman(source, player)`
*   `selChar_Dungstar(source, player)`
*   `selChar_BallOfCthulu(source, player)`
*   `selChar_SirKitty(source, player)`
*   `selChar_Fey(source, player)`
*   `setupCharacterButtons()`: This helper function, called by `onLoad` after a delay, iterates through the `CHARACTERS` table. It finds each character bag and, if its X-position is less than 55 (indicating it's in the selection area), creates the "Select character" button on it, linking it to its specific `selChar_CharacterName` function.

### 2.6. Counting Bag (Preserved 1-to-1) Section

The entire logic for the Counting Bag, including its internal variables, save/load functions, and item counting mechanics, has been directly copied from `existingcode.lua` and integrated.

*   `valueVariable`, `valueDescription`, `itemValues`, `valueName`: Configuration variables for counting.
*   `value`, `containedObjectValues`, `checkFrequency`, `isActive`, `isRunning`, `isCounting`, `isLockedBeforeCounting`, `isLockedUntil`: Internal state variables.
*   `updateSave()`: Saves the `containedObjectValues`.
*   `updateBag()`: Coroutine that periodically calls `countItems`.
*   `onDestroy()`: Stops the `updateBag` coroutine.
*   `getValue(object)`: Determines the value of an object based on its properties.
*   `onObjectLeaveContainer(container, leave_object)`: Updates value when an object leaves the bag.
*   `onCollisionEnter(c)`: Updates value when an object enters the bag.
*   `updateValue()`: Recalculates and displays the total value.
*   `countItems()`: Scans the bag for items, fixes duplicate GUIDs, and updates the total value.
*   `wait(time)`: Helper function for coroutine delays.

---

## 3. Deployment Instructions

To use this consolidated script:

1.  **Open your mod in Tabletop Simulator.**
2.  **Go to `Modding` -> `Scripting`.**
3.  **Delete all the code currently in the `Global` script editor.**
4.  **Copy the entire contents of the `epic.lua` file** (the one provided by the AI).
5.  **Paste it into the `Global` script editor.**
6.  **Click "Save and Play".**
7.  **Crucially, delete or clear the scripts from *all* individual objects** that previously held game logic (character bags, old buttons, zones, etc.). This prevents conflicts and ensures the Global script is the sole source of truth.

---

## 4. Current Status & Known Issues (as of last interaction)

*   The `epic.lua` script contains all the intended logic.
*   A syntax error (`unexpected symbol near '.'`) was identified and fixed in the `selChar_BallOfCthulu` function.
*   The primary remaining issue is that the character selection buttons are reportedly not appearing on the bags, and other buttons (Draw, End Turn, etc.) are also missing. This indicates a deeper problem with script execution or object loading.
*   Debugging `print` statements have been added to `epic.lua` to help diagnose this. The next step requires the user to provide the full console output from Tabletop Simulator after loading the game with the latest `epic.lua` and cleared object scripts.

This outline reflects the intended final state of the script after all issues are resolved.
