--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local tools = require(game:GetService("ReplicatedStorage").game.Items)
local clientData = require(game:GetService("ReplicatedStorage").modules.player.ClientData)
local ran = Random.new()


-- returns the slot and itemData
local function getEquippedToolSlot()
    local equippedToolSlot = nil
    local itemTable = nil
    if not game.Players.LocalPlayer.Character then
    else
        local tool = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
        if tool then
            if tonumber(tostring(tool)) then
                equippedToolSlot = tonumber(tostring(tool))
                itemTable = tools.getItemData(clientData.getHotbar()[tonumber(tostring(tool))])
            end
        end
    end
    return equippedToolSlot,itemTable
end
local function getClosestChoppable(maxDIST)
    local choppable,maxDist = nil,maxDIST
    for i,v in pairs(game:GetService("Workspace").worldResources.choppable:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            local dist = (v:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude
            if dist < maxDist then
                maxDist = dist
                choppable = v
            end
        end
    end
    return choppable
end
local function getClosestStructures(maxDIST)
    local structs,maxDist = {},maxDIST
    for i,v in pairs(game:GetService("Workspace").placedStructures:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            if v:IsA("Model") then
                local dist = (v:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude
                if dist < maxDist then
                    table.insert(structs,v)
                end
            end
        end
    end
    return structs
end
local function getClosestMineable(maxDIST)
    local mineAble,maxDist = nil,maxDIST
    for i,v in pairs(game:GetService("Workspace").worldResources.mineable:GetChildren()) do
        for i,v in pairs(v:GetChildren()) do
            if v:IsA("Model") then
                local dist = (v:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude
                if dist < maxDist then
                    mineAble = v
                    maxDist = dist
                end
            end
        end
    end
    return mineAble
end
local function getClosestAnimal(maxDIST)
    local animal,maxDist = nil,maxDIST
end
local function getClosestFarmlands(maxDIST)
    local closestFarmLands,maxDist = {},maxDIST
    if not game:GetService("Workspace").farmland then
    else
        for i,v in pairs(game:GetService("Workspace").farmland:GetChildren()) do
            task.spawn(function()
                local dist = (v:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude
                if dist < maxDist then
                    table.insert(closestFarmLands,v)
                end
            end)
        end
    end
    return closestFarmLands
end





getgenv().remoteKeys = {}
local function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end
for i, v in pairs(game.Players.LocalPlayer.PlayerGui.client.client:GetChildren()) do
    if i == 2 then
       v.Name = "meleePlayer"
    elseif i == 4 then
       v.Name = "chop"
    elseif i == 5 then
       v.Name = "mine"
    elseif i == 6 then
       v.Name = "hitStructure"
    end
end

local Vanislibrary = loadstring(game:HttpGet("https://pastebin.com/raw/kedJ0wQM"))()

local Window = Vanislibrary:CreateWindow({
    Name = "北约汉化",
    Version = "1.0.0",
    Icon = "rbxassetid://11928957642",
    ConfigFolder = "Project_The_Survival_Game"
})

local Main = Window:CreateTab("Main")
local PlayerTab = Main:CreateFrame("Player")
local VisualTab = Main:CreateFrame("Visual")
local FarmingTab = Main:CreateFrame("Farming")
local ExploitsTab = Main:CreateFrame("Exploits")







-- no fall damage starts here
PlayerTab:CreateToggle({
    Name = "没有掉落伤害",
    Save = true,
    Flag = "傻逼",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait()
                pcall(function()
                    local fallDamageScript = game.Players.LocalPlayer.Character:FindFirstChild("fallDamage")
                    if fallDamageScript then
                        fallDamageScript.Disabled = true
                    end
                end)
            until Vanislibrary.Flags.NoFallDamage.Value == false
            pcall(function()
                local fallDamageScript = game.Players.LocalPlayer.Character:FindFirstChild("fallDamage")
                if fallDamageScript then
                    fallDamageScript.Disabled = false
                end
            end)
        end
    end
})
-- no fall damage ends here





-- animal killaura starts here
PlayerTab:CreateToggle({
    Name = "动物大屠杀",
    Save = true,
    Flag = "跟南京大屠杀一样",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait(.1)
                pcall(function()
                    local equippedToolSlot,itemTable = getEquippedToolSlot()
                    local closestAnimal = getClosestAnimal(40)
                    if equippedToolSlot and itemTable and closestAnimal then
                        local args = {
                            [1] = equippedToolSlot,
                            [2] = closestAnimal
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("remoteInterface"):WaitForChild("interactions"):WaitForChild("meleeAnimal"):FireServer(unpack(args))
                    end
                end)
            until Vanislibrary.Flags.AnimalKillAura.Value == false
        end
    end
})
-- animal killaura ends here







-- no slow down starts here
PlayerTab:CreateToggle({
    Name = "不减速",
    Save = true,
    Flag = "NoSlowDown",
    Callback = function(xxx)
        if xxx == true then
            local function changeWs()
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                end)
            end
            local loop;
            loop = game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(changeWs)
            repeat task.wait() 
                changeWs()
            until Vanislibrary.Flags.NoSlowDown.Value == false
            loop:Disconnect()
        end
    end
})
-- no slow down ends here




-- pick up aura starts here
ExploitsTab:CreateToggle({
    Name = "收拾灵气",
    Save = true,
    Flag = "PickupAura",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait()
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").droppedItems:GetChildren()) do
                        if (v.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 8 then
                            game:GetService("ReplicatedStorage").remoteInterface.inventory.pickupItem:FireServer(v)
                            game:GetService("RunService").Heartbeat:Wait()
                        end
                    end
                end)
            until Vanislibrary.Flags.PickupAura.Value == false
        end
    end
})
-- pick up aura ends here





-- inf stamina starts here
PlayerTab:CreateToggle({
    Name = "耐力",
    Description = "Gives you inf stamina",
    Save = true,
    Flag = "InfStamina",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait()
                pcall(function()
                    game.Players.LocalPlayer:SetAttribute("stamina",1)
                end)
            until Vanislibrary.Flags.InfStamina.Value == false
        end
    end
})
-- inf stamina ends here






-- boat speed starts here
local boatSpeed = 50
ExploitsTab:CreateSlider({
    Name = "设置船速",
    Description = "RRRRRRRRRRRRRRRRRRRRRRRRRRR",
    Min = 1,
    Max = 1000,
    Callback = function(xxx)
        boatSpeed = xxx
    end
})
ExploitsTab:CreateToggle({
    Name = "启用船速",
    Description = "北约可以让船更快",
    Save = true,
    Flag = "BoatSpeedExploit",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait(.1)
                pcall(function()
                    if not boatSpeed then
                    else
                        if not game.Players.LocalPlayer.Character.Humanoid.SeatPart then
                        else
                            if not game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.prim then
                            else
                                if not game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.prim.LinearVelocity then
                                else
                                    game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.prim.LinearVelocity.VectorVelocity = Vector3.new(0,0,-boatSpeed)
                                end
                            end
                        end
                    end
                end)
            until Vanislibrary.Flags.BoatSpeedExploit.Value == false
        end
    end
})
-- boat speed ends here






-- mineable esp starts here
VisualTab:CreateToggle({
    Name = " ESP",
    Description = "显示当前加载地图的岩石.",
    Save = true,
    Flag = "可开采ESP",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait(.1)
                pcall(function()
                    for i,v in pairs(game:GetService("Workspace").worldResources.mineable:GetChildren()) do
                        task.spawn(function()
                            for i,v in pairs(v:GetChildren()) do
                                task.spawn(function()
                                    if v:IsA("Model") then
                                        if not v:GetAttribute("health") then
                                        else
                                            local hasESP = v:FindFirstChild("MineableESP")
                                            if not hasESP then
                                                if v:GetAttribute("health") == 0 then
                                                else
                                                    local BillboardGui = Instance.new("BillboardGui")
                                                    local TextLabel = Instance.new("TextLabel")
                                                    
                                                    --Properties:
                                                    
                                                    BillboardGui.Name = "MineableESP"
                                                    BillboardGui.Parent = v
                                                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                                                    BillboardGui.Active = true
                                                    BillboardGui.Adornee = v
                                                    BillboardGui.AlwaysOnTop = true
                                                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                                                    
                                                    TextLabel.Parent = BillboardGui
                                                    TextLabel.Active = true
                                                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                                    TextLabel.BackgroundTransparency = 1.000
                                                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                                                    TextLabel.Font = Enum.Font.Code
                                                    local rocks = v:FindFirstChild("Rocks") or v:FindFirstChild("BigRocks")
                                                    if rocks then
                                                        TextLabel.TextColor3 = rocks.BrickColor.Color
                                                    else
                                                        TextLabel.TextColor3 = Color3.fromRGB(255,255,255)
                                                    end
                                                    TextLabel.TextSize = 15.000
                                                end
                                            else
                                                if v:GetAttribute("health") == 0 then
                                                    hasESP:Destroy()
                                                else
                                                    if not hasESP.TextLabel then
                                                    else
                                                        hasESP.TextLabel.Text = string.format("[%s]\n[%s]",tostring(v),round((v:GetPivot().Position - game.Players.LocalPlayer.Character:GetPivot().Position).Magnitude,2))
                                                    end
                                                end
                                            end 
                                        end
                                    end
                                end)
                            end
                        end)
                    end
                end)
            until Vanislibrary.Flags.MineableESP.Value == false
            for i,v in pairs(game:GetService("Workspace").worldResources.mineable:GetChildren()) do
                for i,v in pairs(v:GetChildren()) do
                    if v:IsA("Model") then
                        local hasESP = v:FindFirstChild("MineableESP")
                        if hasESP then
                            hasESP:Destroy()
                        end
                    end
                end
            end
        end
    end
})
-- mineable esp ends here







-- plant aura starts here
FarmingTab:CreateToggle({
    Name = "植物光杯 (必须手持凯子)",
    Description = "Automatically plants crops for you.",
    Save = true,
    Flag = "植物噢啦",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait(.1)
                task.spawn(function()
                    if Vanislibrary.Flags.SelectedPlantSeed then
                        local equippedToolSlot,itemTable = getEquippedToolSlot()
                        local selectedSeedId = nil
                        for i,v in pairs(clientData.getInventory()) do
                            if tostring(tools.getItemData(i).itemType) == "Seed" then
                                if tostring(tools.getItemData(i).plantName) == Vanislibrary.Flags.SelectedPlantSeed.Value then
                                    selectedSeedId = tools.getItemData(i).id
                                end
                            end
                        end
                        if equippedToolSlot and itemTable and selectedSeedId then
                            if tostring(itemTable.itemType) == "Shovel" then
                                warn("Shovel is being held.")
                                for i,v in pairs(getClosestFarmlands(30)) do
                                    if not v:GetAttribute("stage") then
                                        local args = {
                                            [1] = equippedToolSlot,
                                            [2] = selectedSeedId,
                                            [3] = v
                                        }
                                        
                                        game:GetService("ReplicatedStorage"):WaitForChild("remoteInterface"):WaitForChild("interactions"):WaitForChild("plant"):FireServer(unpack(args))                 
                                    end
                                end 
                            end
                        end 
                    end
                end)
            until Vanislibrary.Flags.PlantAura.Value == false
        end
    end
})
FarmingTab:CreateBox({
    Name = "Input type of seed. (Wheat, Cabbages, Carrots, Peppers, Berries)",
    Icon = "Default",
    Save = true,
    Flag = "SelectedPlantSeed",
})
-- plant aura starts here







-- harvest aura starts here
FarmingTab:CreateToggle({
    Name = "收获光怀 (必须手持斧头或镰刀)",
    Description = "自动收获任务傻逼",
    Save = true,
    Flag = "HarvestAura",
    Callback = function(xxx)
        if xxx == true then
            repeat task.wait(.1)
                task.spawn(function()
                    local equippedToolSlot,itemTable = getEquippedToolSlot()
                    if equippedToolSlot then
                        for i,v in pairs(getClosestFarmlands(30)) do
                            if v:GetAttribute("stage") then
                                if v:GetAttribute("stage") == 4 then
                                    local args = {
                                        [1] = equippedToolSlot,
                                        [2] = v
                                    }
                                    
                                    game:GetService("ReplicatedStorage"):WaitForChild("remoteInterface"):WaitForChild("interactions"):WaitForChild("harvest"):FireServer(unpack(args))     
                                end
                            end
                        end
                    end
                end)
            until Vanislibrary.Flags.HarvestAura.Value == false
        end
    end
}) 
-- harvest aura ends here


























local SettingsTabPage = Main:CreateFrame("UI")
SettingsTabPage:CreateButton({
    Name = "Save Config",
    Description = "Saves all values for toggles, slider and labels",
    Callback = function()
        Window:SaveConfig()
    end
})


Vanislibrary:Init()