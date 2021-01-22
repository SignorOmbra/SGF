--DEFINE MODULE--
local InitPlayer = {}



--SERVICES--
local Players = game.Players
local DataStoreService = game:GetService("DataStoreService")



--PRIVATE VARIABLES--
local LobbySpawns = workspace.Spawns:GetChildren()



--PUBLIC FUNCTIONS--
function InitPlayer:CreateValue(Player, ValueType, Name, Value)
    local NewValue = Instance.new(ValueType)
    NewValue.Parent = Player
    NewValue.Name = Name
    NewValue.Value = Value

    return NewValue
end



--EVENT SUBSCRIPTION--
Players.PlayerAdded:Connect(function(Player)
    print("Player joined: " .. Player.Name)
end)

Players.PlayerRemoving:Connect(function(Player)
    print("Player left: " .. Player.Name)
end)



--RETURN MODULE--
return InitPlayer