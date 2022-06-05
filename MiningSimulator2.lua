local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Mining Simulator 2 ", HidePremium = false, SaveConfig = true, ConfigFolder = "Configs"})

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


local Tab1 = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab1:AddLabel("Unlock The First World First!")

Tab1:AddButton({
	Name = "Hidden Treasure",
	Callback = function()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.5, -535.9521484375, -23.5) 
   
end
})

Tab1:AddButton({
	Name = "Frozen Depths",
	Callback = function()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.499993324279785, -2035.952392578125, -23.499996185302734) 

   
end
})

Tab1:AddButton({
	Name = "Gloomy Basin",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.261228561401367, -3835.97314453125, -24.240184783935547)

   
end
})

Tab1:AddButton({
	Name = "Molten Core",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.5, -5635.95361328125, -23.5)


   
end
})


   

Tab1:AddButton({
	Name = "The Underworld",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.5921659469604492, -7435.95361328125, -26.71811294555664) 



   
end
})

Tab1:AddButton({
	Name = "Crystal Cavern",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.500002861022949, -9235.9541015625, -23.499998092651367)



   
end
})



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


