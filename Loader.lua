-- Game-specific scripts (Replace with actual PlaceIds and URLs)
local games = {
    [123456789] = "https://raw.githubusercontent.com/KnoxTheDev/Knoxius/main/Games/Game1Script.lua", -- Example PlaceId
}

-- Universal script URL
local universalScript = "https://raw.githubusercontent.com/KnoxTheDev/Knoxius/main/Universal/Script.lua"
local universal = true

-- Debugging: Print PlaceId
print("Current PlaceId: " .. tostring(game.PlaceId))

-- Attempt to load game-specific scripts
for placeId, url in pairs(games) do
    if game.PlaceId == placeId then
        print("Loading script for PlaceId: " .. tostring(placeId))
        local success, response = pcall(function() return game:HttpGet(url) end)
        if success then
            loadstring(response)()
            universal = false
        else
            print("Failed to fetch game script:", response)
        end
        break
    end
end

-- Load universal script if no game-specific script was found
if universal then
    print("Loading universal script...")
    local success, response = pcall(function() return game:HttpGet(universalScript) end)
    if success then
        loadstring(response)()
    else
        print("Failed to fetch universal script:", response)
    end
end
