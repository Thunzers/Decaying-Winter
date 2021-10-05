-- Join with 2 accounts
-- Use the script on the opposite account

local Level = 2
local Player = "Account1234"

for i = 1, Level*750/15 do
    workspace.ServerStuff.callEvent:FireServer("commend", Player)
    if i%10 == 0 then
        wait()
    end
end