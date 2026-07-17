local GameManager = {}
GameManager.__index = GameManager

local StarterGui = game:GetService("StarterGui")

local MainRepository = "https://raw.githubusercontent.com/Dennissouza4/DS-Menu-project/refs/heads/main/Games/"

GameManager.Games = {
    [10186342197] = {
        Name = "Makehotsauce",
        Repository = "MakeHotsauce/main.lua",
    },

    [123] = {
        Name = "BloxFruits",
        Repository = "",
    },

    [605887098] = {
        Name = "CarDealershipTycoon",
        Repository = "CarDealershipTycoon/main.lua",
    },

    [789] = {
        Name = "DrivingEmpire",
        Repository = "",
    }
}

function GameManager.Initialize()
    local gameData = GameManager.Games[game.GameId]
    if not gameData then
        warn("not supported")
        StarterGui:SetCore("SendNotification", {Title = "Jogo Não Suportado", Text = "o Jogo Atual não é suportado Pela DS Studios.", Duration = 5})
        return
    end
    GameManager.CurrentGame = gameData.Name
    GameManager.Repository = gameData.Repository
    loadstring(game:HttpGet(tostring(MainRepository) .. tostring(gameData.Repository)))()
end
-- que desgraça que foi codar esse hub
GameManager.Initialize()
