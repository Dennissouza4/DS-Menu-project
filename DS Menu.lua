local GameManager = {}
GameManager.__index = GameManager

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

    [456] = {
        Name = "CarDealershipTycoon",
        Repository = "",
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
        return
    end
    GameManager.CurrentGame = gameData.Name
    GameManager.Repository = gameData.Repository
    loadstring(game:HttpGet(tostring(MainRepository) .. tostring(gameData.Repository)))()
end
-- que desgraça que foi codar esse hub
GameManager.Initialize()
