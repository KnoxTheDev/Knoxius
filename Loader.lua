--[[

  _  __                _             _    _       _     
 | |/ /               (_)           | |  | |     | |    
 | ' / _ __   _____  ___ _   _ ___  | |__| |_   _| |__  
 |  < | '_ \ / _ \ \/ / | | | / __| |  __  | | | | '_ \ 
 | . \| | | | (_) >  <| | |_| \__ \ | |  | | |_| | |_) |
 |_|\_\_| |_|\___/_/\_\_|\__,_|___/ |_|  |_|\__,_|_.__/ 

]]

local games = {
    -- Replace with the actual PlaceId and script URL
    -- [111111111] = "https://raw.githubusercontent.com/KnoxTheDev/Knoxius/main/Games/Game1Script.lua",
}

local universalScript = "https://raw.githubusercontent.com/KnoxTheDev/Knoxius/main/Universal/Script.lua"
local universal = true

for placeId, url in pairs(games) do
    if game.PlaceId == placeId then
        loadstring(game:HttpGet(url))()
        universal = false
        break
    end
end

if universal == true then
    loadstring(game:HttpGet(universalScript))()
end
