-- PERMENANTLY maxes out rations
-- Only resets on new runs or on death

getsenv(game:GetService("Players").LocalPlayer.Backpack.mainHandler).ration_system_handler.thirst = 2e9
getsenv(game:GetService("Players").LocalPlayer.Backpack.mainHandler).ration_system_handler.hunger = 2e9