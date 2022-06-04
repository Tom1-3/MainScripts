# Welcome To Tom's Main Scripts!

# If A Script Isnt Here Just Wait For Awhile!

### My Youtube Channel!
<p>https://www.youtube.com/channel/UCjIvD-sWH0v7voMGDmZDqkQ</p>


## If You Have A Game You Want Comment On My Channel!

## Falling Color Block

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

## No Scope Arcade

```
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local Window = OrionLib:MakeWindow({Name = "No Scope Arcade", HidePremium = false, SaveConfig = true, ConfigFolder = "NSAConfig"})

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

Tab:AddLabel("This Game Can Ban! Use Alts At All Times")

Tab:AddButton({
	Name = "Silent Aim",
	Callback = function()
	    local old_send = nil
local players = game.Players
local localplayer = players.LocalPlayer
local mouse = localplayer:GetMouse()
local camera = workspace.CurrentCamera

function is_dead(plr)
    if (not plr.Character or plr.Character.Humanoid.Health <= 0) then return true end
	if (plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Dead) then return true end
	
	return false;
end

function distance_from_cursor(pos)
	return math.sqrt(math.pow(pos.x - mouse.x, 2) + math.pow(pos.y - mouse.y, 2));
end

function get_closest_player_to_cursor()
    local best_distance, best_player = 10000, nil
    
    for _, player in pairs(players:GetPlayers()) do
        if (player == localplayer) then continue end

        if player.Character and not is_dead(player) and player.Character:FindFirstChild("Head") then
            
            local vector, on_screen = camera:WorldToScreenPoint(player.Character.Head.Position)
            
            if (on_screen) then
                local distance = distance_from_cursor(vector)
                
                if (distance < best_distance) then
                    best_distance = distance
                    best_player = player
                end
            end
        end
    end
    
    return best_player
end

function send_hook(this, name, ...)
    if name == "Bullet" then
        local tbl = {...}
        local opponent = get_closest_player_to_cursor()
        if opponent ~= nil and opponent.Character:FindFirstChild("Head") then
            tbl[1] = workspace:FindFirstChild(opponent.Name)
            tbl[2] = workspace:FindFirstChild(opponent.Name).Head
        end
        return old_send(this, name, table.unpack(tbl))
    end
    return old_send(this, name, ...)
end

function hook_send()
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "Send") then
            old_send = hookfunction(v.Send, send_hook)
        end
    end
end
hook_send()
		
end    
})

Tab:AddButton({
	Name = "Esp",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua',true))()
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

```

## Slap Battles

```
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
```


