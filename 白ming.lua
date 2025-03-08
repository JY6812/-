local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["qazplm10059"] = true,
    ["玩家用户名"] = true,
    ["玩家用户名"] = true,
    ["玩家用户名"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fifiopop/rr/refs/heads/main/666666%E8%84%9A%E6%9C%AC.lua"))()
else
    localPlayer:Kick("你没有被加入白名单，请找群主反馈或购买")
end