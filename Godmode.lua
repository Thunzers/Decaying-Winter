-- Extremely weird
-- Give you NaN health, blacking out your healthbar on teammate's screens
-- Melee enemies completely ignore you, and just walk past you.
-- You can not set off any traps, like snares and dynamites.
-- Resetting will permenantly break your screen, softlocking the server until you rejoin.

workspace.ServerStuff.dealDamage:FireServer({"meleedamage",game.Players.LocalPlayer.Character,tonumber("NaN"),false,"PLBlade",false,false,{},game.Players.LocalPlayer.Character.Head}, nil, getrenv()._G.pseed[getrenv()._G.list[workspace.ServerStuff.ask:InvokeServer("main", true)]])
