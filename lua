local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if LocalPlayer then
    LocalPlayer.Chatted:Connect(function(message)
        local command = string.lower(message)
        if command == ".dex" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
        end
    end)
end

local LocalPlayer = game.Players.LocalPlayer

if LocalPlayer then
    LocalPlayer.Chatted:Connect(function(message)
        local command = string.lower(message)
        if command == ".rspy" then
            local owner = "Upbolt"
            local branch = "revision"

            local function webImport(file)
                return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
            end

            webImport("init")
            webImport("ui/main")
        end
    end)
end
