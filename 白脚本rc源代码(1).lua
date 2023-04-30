local a=tostring(game.Players.LocalPlayer.Character)
local lp=game.Players.LocalPlayer
local bai={
  chulistcs=false,
  flyspeed=100,
  itemset=nil,
  stoptp=false,
  playernamedied=nil,
  dropdown=nil,
  
}
function shuaxinlb(zji)
    bai.dropdown={}
    if zji==true then
    for p, I in next,game.Players:GetChildren() do
    table.insert(bai.dropdown, I.Name)
    end
    else
    for p, I in next, game.Players:GetChildren() do
    if I ~= lp then
    table.insert(bai.dropdown, I.Name)
    end
    end
    end
    end
    shuaxinlb(true)
notify = function(...)
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    if not GUI then
        local STX_Nofitication = Instance.new("ScreenGui")
        local STX_NofiticationUIListLayout = Instance.new("UIListLayout")
        STX_Nofitication.Name = "STX_Nofitication"
        STX_Nofitication.Parent = game.CoreGui
        STX_Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        STX_Nofitication.ResetOnSpawn = false
 
        STX_NofiticationUIListLayout.Name = "STX_NofiticationUIListLayout"
        STX_NofiticationUIListLayout.Parent = STX_Nofitication
        STX_NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        STX_NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        STX_NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
    end
    local Args = {...}
    local Nofitication = {}
    local GUI = game:GetService("CoreGui"):FindFirstChild("STX_Nofitication")
    function Nofitication:Notify(nofdebug, middledebug, all)
        local SelectedType = string.lower(tostring(middledebug.Type))
        local ambientShadow = Instance.new("ImageLabel")
        local Window = Instance.new("Frame")
        local Outline_A = Instance.new("Frame")
        local WindowTitle = Instance.new("TextLabel")
        local WindowDescription = Instance.new("TextLabel")
 
        ambientShadow.Name = "ambientShadow"
        ambientShadow.Parent = GUI
        ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        ambientShadow.BackgroundTransparency = 1.000
        ambientShadow.BorderSizePixel = 0
        ambientShadow.Position = UDim2.new(0.91525954, 0, 0.936809778, 0)
        ambientShadow.Size = UDim2.new(0, 0, 0, 0)
        ambientShadow.Image = "rbxassetid://1316045217"
        ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        ambientShadow.ImageTransparency = 0.400
        ambientShadow.ScaleType = Enum.ScaleType.Slice
        ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)
 
        Window.Name = "Window"
        Window.Parent = ambientShadow
        Window.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        Window.BorderSizePixel = 0
        Window.Size = UDim2.new(0, 230, 0, 80)
        Window.ZIndex = 2
 
        Outline_A.Name = "Outline_A"
        Outline_A.Parent = Window
        Outline_A.BackgroundColor3 = middledebug.OutlineColor
        Outline_A.BorderSizePixel = 0
        Outline_A.Position = UDim2.new(0, 0, 0, 25)
        Outline_A.Size = UDim2.new(0, 230, 0, 2)
        Outline_A.ZIndex = 5
 
        WindowTitle.Name = "WindowTitle"
        WindowTitle.Parent = Window
        WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowTitle.BackgroundTransparency = 1.000
        WindowTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowTitle.BorderSizePixel = 0
        WindowTitle.Position = UDim2.new(0, 8, 0, 2)
        WindowTitle.Size = UDim2.new(0, 222, 0, 22)
        WindowTitle.ZIndex = 4
        WindowTitle.Font = Enum.Font.GothamSemibold
        WindowTitle.Text = nofdebug.Title
        WindowTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
        WindowTitle.TextSize = 12.000
        WindowTitle.TextXAlignment = Enum.TextXAlignment.Left
 
        WindowDescription.Name = "WindowDescription"
        WindowDescription.Parent = Window
        WindowDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        WindowDescription.BackgroundTransparency = 1.000
        WindowDescription.BorderColor3 = Color3.fromRGB(27, 42, 53)
        WindowDescription.BorderSizePixel = 0
        WindowDescription.Position = UDim2.new(0, 8, 0, 34)
        WindowDescription.Size = UDim2.new(0, 216, 0, 40)
        WindowDescription.ZIndex = 4
        WindowDescription.Font = Enum.Font.GothamSemibold
        WindowDescription.Text = nofdebug.Description
        WindowDescription.TextColor3 = Color3.fromRGB(180, 180, 180)
        WindowDescription.TextSize = 12.000
        WindowDescription.TextWrapped = true
        WindowDescription.TextXAlignment = Enum.TextXAlignment.Left
        WindowDescription.TextYAlignment = Enum.TextYAlignment.Top
 
        if SelectedType == "default" then
            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)
 
                ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
                Window.Size = UDim2.new(0, 230, 0, 80)
                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
 
                wait(middledebug.Time)
 
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
 
                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "image" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 90), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 80)
            WindowTitle.Position = UDim2.new(0, 24, 0, 2)
            local ImageButton = Instance.new("ImageButton")
            ImageButton.Parent = Window
            ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageButton.BackgroundTransparency = 1.000
            ImageButton.BorderSizePixel = 0
            ImageButton.Position = UDim2.new(0, 4, 0, 4)
            ImageButton.Size = UDim2.new(0, 18, 0, 18)
            ImageButton.ZIndex = 5
            ImageButton.AutoButtonColor = false
            ImageButton.Image = all.Image
            ImageButton.ImageColor3 = all.ImageColor
 
            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)
 
                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
 
                wait(middledebug.Time)
 
                ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
 
                wait(0.2)
                ambientShadow:Destroy()
            end
            coroutine.wrap(ORBHB_fake_script)()
        elseif SelectedType == "option" then
            ambientShadow:TweenSize(UDim2.new(0, 240, 0, 110), "Out", "Linear", 0.2)
            Window.Size = UDim2.new(0, 230, 0, 100)
            local Uncheck = Instance.new("ImageButton")
            local Check = Instance.new("ImageButton")
 
            Uncheck.Name = "Uncheck"
            Uncheck.Parent = Window
            Uncheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Uncheck.BackgroundTransparency = 1.000
            Uncheck.BorderSizePixel = 0
            Uncheck.Position = UDim2.new(0, 7, 0, 76)
            Uncheck.Size = UDim2.new(0, 18, 0, 18)
            Uncheck.ZIndex = 5
            Uncheck.AutoButtonColor = false
            Uncheck.Image = "http://www.roblox.com/asset/?id=6031094678"
            Uncheck.ImageColor3 = Color3.fromRGB(255, 84, 84)
 
            Check.Name = "Check"
            Check.Parent = Window
            Check.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Check.BackgroundTransparency = 1.000
            Check.BorderSizePixel = 0
            Check.Position = UDim2.new(0, 28, 0, 76)
            Check.Size = UDim2.new(0, 18, 0, 18)
            Check.ZIndex = 5
            Check.AutoButtonColor = false
            Check.Image = "http://www.roblox.com/asset/?id=6031094667"
            Check.ImageColor3 = Color3.fromRGB(83, 230, 50)
 
            local function ORBHB_fake_script()
                local script = Instance.new("LocalScript", ambientShadow)
 
                local Stilthere = true
                local function Unchecked()
                    pcall(
                        function()
                            all.Callback(false)
                        end
                    )
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
 
                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                local function Checked()
                    pcall(
                        function()
                            all.Callback(true)
                        end
                    )
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
 
                    wait(0.2)
                    ambientShadow:Destroy()
                    Stilthere = false
                end
                Uncheck.MouseButton1Click:Connect(Unchecked)
                Check.MouseButton1Click:Connect(Checked)
 
                Outline_A:TweenSize(UDim2.new(0, 0, 0, 2), "Out", "Linear", middledebug.Time)
 
                wait(middledebug.Time)
 
                if Stilthere == true then
                    ambientShadow:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Linear", 0.2)
 
                    wait(0.2)
                    ambientShadow:Destroy()
                end
            end
            coroutine.wrap(ORBHB_fake_script)()
        end
    end
    Nofitication:Notify(
        {Title = Args[1], Description = Args[2]},
        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = Args[3], Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
    )
end

function tp(p)
   lp.Character:PivotTo(p)
end

function GetPlot()
for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == lp then
return v.Base.CFrame+Vector3.new(0,10, 0)
end
end
end
function chuansongOres(cframe)
bai.stoptp=true
for i,v in pairs(game:GetService("Workspace").Grabable:GetChildren()) do
if bai.stoptp == false then break end
if v.Name == "MaterialPart" and v:FindFirstChild("Owner") and v.Owner.Value == lp and (v.PrimaryPart.Position - lp.Character.HumanoidRootPart.Position).Magnitude <= 30 then
v.PrimaryPart.CFrame = cframe
for i=1,3 do
v.PrimaryPart.CFrame = cframe
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(v.Part,{})

game:GetService("RunService").Heartbeat:wait();
end
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v.Part,{})

elseif v.Name == "MaterialPart" and v:FindFirstChild("Owner") and v.Owner.Value == lp and (v.PrimaryPart.Position - lp.Character.HumanoidRootPart.Position).Magnitude > 30 then
for i=1, 3 do
v.PrimaryPart.CFrame = cframe
game:GetService("ReplicatedStorage").Events.Grab:InvokeServer(v.Part,{})

game:GetService("RunService").Heartbeat:wait();
end
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v.Part,{})



end
end
end
function gsw()
    local best = nil
for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == lp then
	for i,f in pairs(v.Objects:GetChildren()) do
    if f:FindFirstChild("Conveyor")  then
		 best=f.Conveyor.Conv.Line.CFrame
  end
   end
		end
    end
    return best
end
local function lg(value)
    if value then 
        local light = Instance.new('PointLight', lp.Character.Head)
        light.Name='bai'
        light.Range = 500
        light.Brightness = 5
    else
        pcall(function()
           lp.Character.Head.bai:remove();
        end);
    end;
end;
local bailib = loadstring(game:HttpGet"https://pastebin.com/raw/DW3eJwe6")()
local win = bailib:new("北约--Refinery Caves",'')
local Tab = win:Tab("主要功能", "10728953248")
local Section = Tab:section("矿石功能",true)
local Section1 = Tab:section("其他功能",true)
local Tab1 = win:Tab("传送功能", "10728953248")
local Section2 = Tab1:section("玩家功能",true)
Section:Button("传送矿石到家",function()
	local base=GetPlot()
chuansongOres(base)
end)

Section:Button("卖矿石",function()
chuansongOres(game:GetService("Workspace").Map.Sellary.Counter.Base.CFrame)
game.workspace.Map.Sellary.Keeper.IPart.Interact:FireServer()

end)

Section:Button("带来矿石",function()
chuansongOres(lp.Character.HumanoidRootPart.CFrame)
end)
Section:Button("设置矿石传送点",function()
pcall(function()
workspace.baiBasedropCord:Destroy();
bai.itemset=nil
end)
local baiBasedropCord = Instance.new("Part",game.Workspace)
    baiBasedropCord.Name = 'baiBasedropCord'
    baiBasedropCord.CanCollide = false
    baiBasedropCord.Anchored = true
    baiBasedropCord.Shape = Enum.PartType.Ball
    baiBasedropCord.Color = Color3.fromRGB(0, 217, 255);
    baiBasedropCord.Transparency = 0.5
    baiBasedropCord.Size = Vector3.new(2, 2, 2)
    baiBasedropCord.CFrame = lp.Character.HumanoidRootPart.CFrame
    baiBasedropCord.Material = Enum.Material.Marble
    bai.itemset=lp.Character.HumanoidRootPart.CFrame
end)
Section:Button("删除矿石传送点",function()
pcall(function()
workspace.baiBasedropCord:Destroy();
bai.itemset=nil
end)
end)
Section:Button("开始传送矿石",function()
if bai.itemset==nil then
return notify("白","请你放传送点",4)
end
local cf=bai.itemset
chuansongOres(cf)
end)
Section:Button("停止传送矿石",function()
bai.stoptp=false
end)

Section:Button("寻找紫树",function()
local find=false
	for _,v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "Interact" and v.Parent.Name == "Leaf" then
		    tp(v.Part.CFrame)
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		BillboardGui.Parent = v.Parent
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Size = UDim2.new(0, 50, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = "紫树在这里"
		TextLabel.TextColor3 = Color3.new(1, 0, 0)
		TextLabel.TextScaled = true
		local find=true
		end
		end
		if find==false then
			notify("白","没有找到树",4)
			else
				notify("白","已找到树",4)
			

		end
end)

Section1:Toggle("自我发光", "ToggleInfo",false, function(s)
	lg(s)
end)
Section1:Toggle("处理好后石头传送到当前位置", "ToggleInfo",false, function(state)
	bai.chulistcs=state
end)

Section1:Button("处理矿石",function()
  local tp=gsw()
  chuansongOres(tp+Vector3.new(0,0.5, 0))
  wait(1)
  if bai.chulistcs==true then
    chuansongOres(lp.Character.HumanoidRootPart.CFrame)
  
  end
  end)
Section1:Button("点击传送物品到家",function()

local Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
	Tool.Name = "点击你想要传送的物品"
		Tool.RequiresHandle = false;
		
	Tool.Activated:connect(function()
	
		if lp:GetMouse().Target.Parent:FindFirstChild("Owner") then
			if lp:GetMouse().Target.Parent.Owner.Value==lp then
				
					for i, v in next,lp:GetMouse().Target.Parent:children() do
          if v.Name~="Configuration" or v.Name~="Link" or v.Name~="Shop" then
           
            game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v,{})
            v.CFrame=GetPlot()
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v,{})
          end
        
					
				end
			end
				end
	end)
	Tool.Parent = game.Players.LocalPlayer.Backpack
  
  end)
if a == 'yaozhengaii' then
Section1:Button("大牛马专属功能",function()
local Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
	Tool.Name = "点击你想要传送的物品"
		Tool.RequiresHandle = false;
		
	Tool.Activated:connect(function()
	
	if lp:GetMouse().Target.Parent:FindFirstChild("Owner") then
	if lp:GetMouse().Target.Parent.Owner.Value==lp then
				
for i, v in next,lp:GetMouse().Target.Parent:children() do
          if v.Name~="Configuration" or v.Name~="Link" or v.Name~="Shop" then
           
            game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v,{})
            v.CFrame=bai.itemset
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(v,{})
          end
        
					
				end
			end
			end
	end)
	Tool.Parent = game.Players.LocalPlayer.Backpack
  
  end)
end
Section1:Button("点击卖石头",function()

local Tool = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
	Tool.Name = "点击你想要卖的石头"
		Tool.RequiresHandle = false;
		
	Tool.Activated:connect(function()
	
		if lp:GetMouse().Target.Parent:FindFirstChild("Owner") then
			if lp:GetMouse().Target.Parent.Owner.Value==lp then
		if lp:GetMouse().Target.Parent:FindFirstChild("Part") and lp:GetMouse().Target.Parent.Name == "MaterialPart" then
					
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(lp:GetMouse().Target.Parent.Part,{})
    lp:GetMouse().Target.Parent.Part.CFrame=game:GetService("Workspace").Map.Sellary.Counter.Base.CFrame
game:GetService("ReplicatedStorage").Events.Ungrab:FireServer(lp:GetMouse().Target.Parent.Part,{})
wait(0.2)
game.workspace.Map.Sellary.Keeper.IPart.Interact:FireServer()
      
					
				end
			end
				end
	end)
	Tool.Parent = game.Players.LocalPlayer.Backpack
  
  end)
  
  Section1:Slider('设置飞行速度', 'Sliderflag', 16, 16, 200,false, function(s)
  	bai.flyspeed=s
end)

Section1:Toggle("飞行开关", "ToggleInfo",false, function(state)
    if state then
    local Speed = bai.flyspeed
 
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart

 
	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")
 
	--Properties:
 
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
	unfly.Name = "unfly"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "unfly"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)
 
	StopFly.Name = "Stop Fly"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "Stop fly"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)
 
	Fly.Name = "Fly"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "Fly"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		    local Speed = bai.flyspeed
 
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)
 
	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 226)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		    local Speed = bai.flyspeed
 
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)
 
 
	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		    local Speed = bai.flyspeed
 
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)
    else
game.CoreGui.ScreenGui:Destroy()
    end
end)
Section1:Button("飞行脚本",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
local dropdown = Section2:Dropdown("选择玩家名称",'Dropdown',bai.dropdown,function(v)
    bai.playernamedied = v
end)

Section2:Button("刷新列表", function()
	shuaxinlb(true)
	dropdown:SetOptions(bai.dropdown)
end)

Section2:Button("传送到玩家旁边",function()
  
            tp(game:GetService("Players")[bai.playernamedied].Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0))
      
end)
Section2:Button("传送到玩家基地", function()

	for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
        if v.Owner.Value == game.Players[bai.playernamedied] then
			tp(v.Base.CFrame + Vector3.new(0,10,0))      
         end
    end
end)
