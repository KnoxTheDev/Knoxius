local games = {
    [{game.PlaceId}] = "https://raw.githubusercontent.com/KnoxTheDev/Knoxius/main/Universal/Script.lua",
}

for ids, url in next, games do
    if table.find(ids, game.PlaceId) then
        loadstring(game:HttpGet(url))()
        break
    end
end
