local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Slap Battles ", HidePremium = false, SaveConfig = true, ConfigFolder = "Configs"})

OrionLib:MakeNotification({
	Name = "Credits",
	Content = "GUI By ThomasPlays! On Youtube",
	Image = "rbxassetid://4483345998",
	Time = 10
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Game Can Ban! Use Alts At All Times!")

Tab:AddButton({
	Name = "Walkspeed Check Bypass",
	Callback = function()
      	local wack
wack = hookmetamethod(game,'__namecall', function(self,...)
local method = getnamecallmethod()
if not checkcaller() and self.Name == 'WalkSpeedChanged' and method == 'FireServer' then
return;
end
return wack(self,...)
end)	
  	end    
})

Tab:AddLabel("Press Button Above Before Changing Walkspeed!")

Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		_G.WS = Value
	end    
})

Tab:AddButton({
	Name = "Change Walkspeed",
	Callback = function()
      	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.WS
  	end    
})


Tab:AddLabel("Dont Be Too Obvious With Hitbox Expander")

Tab:AddButton({
	Name = "Hitbox Expander GUI",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/rblx/main/good_hbe.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Credits",
	Callback = function()
     OrionLib:MakeNotification({
	Name = "Credits",
	Content = "GUI By ThomasPlays! On Youtube",
	Image = "rbxassetid://4483345998",
	Time = 10
})
  	end    
})


OrionLib:Init()
