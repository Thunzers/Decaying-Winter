-- Y to toggle ESP
-- By default shows: Crates [White], Workbenches [Blue] and Enemies, [Red]

getgenv().ScanItems = {
    {"HumanoidRootPart", Color3.fromRGB(255,0,0)}, -- Enemy
    {"Crate", Color3.fromRGB(224, 224, 224)}, -- Crate
    {"Workbench", Color3.fromRGB(0, 0, 255)}, -- Workbench
}
local Enabled = true

local old = {}
local Cam = workspace.CurrentCamera
local Plr = game:GetService("Players").LocalPlayer

game:GetService("RunService").RenderStepped:Connect(function()
    for _,v in pairs(old) do
        v:Remove()
    end
    old = {}
    if Enabled then
        for _,v in pairs(workspace:FindFirstChild("activeHostiles"):GetChildren()) do
            local point,Inside = Cam:WorldToViewportPoint(v:FindFirstChild("Head").Position)
            local color = ScanItems[1][2]
            if Inside then
                local l = Drawing.new("Line")
                l.Visible = true
                l.From = Vector2.new(Plr:GetMouse().X, Plr:GetMouse().Y + (game:GetService("GuiService"):GetGuiInset().Y))
                l.To = Vector2.new(point.X,point.Y)
                l.Color = color
                l.Thickness = 2
                l.Transparency = 1
                table.insert(old,l)
            end
        end

        for _,v in pairs(workspace:FindFirstChild("Interactables"):GetChildren()) do
            local scanned = false
            local color = Color3.new(1,1,1)     
            for _,b in pairs(ScanItems) do
                if b[1] == v.Name then
                    scanned = true
                    color = b[2] or Color3.new(1,1,1)
                end
            end
            if not scanned then continue end
            local point,Inside = Cam:WorldToViewportPoint(v:FindFirstChild("Interact").Position)
            if  Inside then
                local l = Drawing.new("Line")
                l.Visible = true
                l.From = Vector2.new(Plr:GetMouse().X, Plr:GetMouse().Y + (game:GetService("GuiService"):GetGuiInset().Y))
                l.To = Vector2.new(point.X,point.Y)
                l.Color = color
                l.Thickness = 2
                l.Transparency = 1
                table.insert(old,l)
            end
        end
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if gameProcessedEvent then return end
    if inputObject.UserInputType == Enum.UserInputType.Keyboard and inputObject.KeyCode == Enum.KeyCode.Y then
        Enabled = not Enabled 
    end
end)