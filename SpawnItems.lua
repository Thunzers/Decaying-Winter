-- Spawns in any item in the game at your feet
-- Items with a certain amount of "uses" will always start with 200
-- Get the item names from GenerateItemNames.lua script

local ToSpawn = "JBox"
    
local Key = getrenv()._G.pseed[getrenv()._G.list[workspace.ServerStuff.ask:InvokeServer("main", true)]]
workspace.ServerStuff.throwWeapon:FireServer(ToSpawn, nil, CFrame.new(), "drop", {}, 2e9, false, Key)
