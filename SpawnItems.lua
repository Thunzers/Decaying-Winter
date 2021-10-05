local ToSpawn = "lBuP"
    
local Key = getrenv()._G.pseed[getrenv()._G.list[workspace.ServerStuff.ask:InvokeServer("main", true)]]
workspace.ServerStuff.throwWeapon:FireServer(ToSpawn, nil, CFrame.new(), "drop", {}, 2e9, false, Key)
local Wep = game:GetService("Workspace").WeaponDrops:WaitForChild(ToSpawn)--[[
workspace.ServerStuff.claimItem:InvokeServer(Wep)
workspace.ServerStuff.getTPWeapon:FireServer(ToSpawn, game:GetService("ReplicatedStorage").animationSets.TPanimSets["2HSPR"], "Fist", Wep, false)--]]