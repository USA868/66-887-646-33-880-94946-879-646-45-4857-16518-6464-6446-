loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti%20Kick.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
loadstring(game:HttpGet("https://pastebin.com/raw/L3k96v3z"))()
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/xLRUSiKx"))()
-----------------------------------------------------------------------------------------------------
local function JLJNO_fake_script() -- Title.RainbowTextColor 
	local script = Instance.new('LocalScript', Title)

	local t = 3;
	
	while wait() do
	  local hue = tick() % t / t
	  local color = Color3.fromHSV(hue,1,1) 
	  script.Parent.TextColor3 = color
	end
end
coroutine.wrap(JLJNO_fake_script)()
local CardSystemScreenGui = Instance.new("ScreenGui")
local Window = OrionLib:MakeWindow({Name = "NATOセンター", HidePremium = false, SaveConfig = true,IntroText = "NATOセンター", ConfigFolder = "NATOセンター"})
-----------------------------------------------------------------------------------------------------
local about = Window:MakeTab({
    Name = "NATOメインインタフェース",
    Icon = "rbxassetid://7072717697",
    PremiumOnly = false
})
about:AddLabel("NATOテスト版")
about:AddLabel("自動更新")
about:AddParagraph("作者","NATO洋軍（中国）")
about:AddLabel("作者QQ:2399784507")
about:AddLabel("日貨1500元")
about:AddParagraph("NATOセンター","有料で遊べる")
-----------------------------------------------------------------------------------------------------
local Tab = Window:MakeTab({
	Name = "その他のスクリプト",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "レストランの大物2",
	Callback = function()
	loadstring(game:httpget("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202", true))()
	end
})

Tab:AddButton({
	Name = "唐県",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Tang%20Country.lua"))()
	end
})
Tab:AddButton({
	Name = "うんてんセンタ",
	Callback = function()
	-- NO KEY SYSTEM!
-- https://discord.com/invite/kTVRpqAg3m

loadstring(game:HttpGet('https://keshhub.xyz/.loader', true))()
    end
})

Tab:AddButton({
	Name = "NATO蜂群シミュレータ",
	Callback = function()
	loadstring(game:HttpGet("https://rahttps://rahttps://raw.githubusercontent.com/USA868/USA--/main/.github/%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B/1%E6%9D%96%E4%BA%BA%E4%BD%BF%E7%94%A8?token=GHSAT0AAAAAACB6LLQWA5JNQNNWTP47AOWSZCLYRTQ"))()
	end
})

Tab:AddButton({
	Name = "CBM",
	Callback = function()
	getgenv().CBMyyds="CBM脚本"
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,98,57,112,80,66,118,76,97})end)())))()
   end
})

Tab:AddButton({
	Name = "サーバシミュレータ",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/1Kj71cJM"))();
	end
})

Tab:AddButton({
	Name = "派閥防衛の大物",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cranium1214/TOO-EZ/main/loader.lua'),true))()
	end
})
	
Tab:AddButton({
	Name = "隠れて無敵を加える",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})

Tab:AddButton({
	Name = "NATOは恐れている",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githttps://raw.githubusercontent.com/USA868/USA--/main/%E8%8B%A6%E5%8A%9B%E6%80%95%E6%9D%80%E6%89%8B(ZERO%E6%B1%89%E5%8C%96)%20(1).txt?token=GHSAT0AAAAAACB6LLQWG2CFCYA27H5D33DSZCMVNZQ"))()
	end
})


