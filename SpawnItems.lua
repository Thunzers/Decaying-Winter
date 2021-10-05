local ToSpawn = "JBox"
    
local Key = getrenv()._G.pseed[getrenv()._G.list[workspace.ServerStuff.ask:InvokeServer("main", true)]]
workspace.ServerStuff.throwWeapon:FireServer(ToSpawn, nil, CFrame.new(), "drop", {}, 2e9, false, Key)
