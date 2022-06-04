# Welcome To Tom's Main Scripts!


<p>Here Are All The Scripts I Have Showcased In My Videos!</p>


## Falling Color Block Script

```
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local Window = OrionLib:MakeWindow({Name = "Falling Color Block ", HidePremium = false, SaveConfig = true, ConfigFolder = "FallingBlockTroll"})


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



local chars = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

local function touchAll()
for i,v in pairs (game.Workspace:GetDescendants()) do 
    if v.Name == 'TouchInterest' then 
        firetouchinterest(chars.HumanoidRootPart, v.Parent, 0)
    end
end 
end

Tab:AddToggle({
	Name = "Touch All",
	Default = false,
	Callback = function(Value)
		repeat
		    Wait(1)
		    touchAll()
		   until Value == false
	end    
})
Tab:AddSlider({
	Name = "Inf Jump Power",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(250,250,250),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
		_G.JumpHeight = Value
	end    
})


Tab:AddButton({
	Name = "Infinite Jump",
	Callback = function()
      	local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';



function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)	
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

Tab:AddButton({
	Name = "Destroy Script",
	Callback = function()
	  OrionLib:Destroy()
end   
})

OrionLib:Init()
```







