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




