当地的StarterGui=游戏：GetService("StarterGui")
当地的玩家=游戏：GetService("玩家")
当地的白名单玩家={
["qazplm1005"] =正确,
["玩家用户名"] =正确,
["玩家用户名"] =正确,
["玩家用户名"] =正确,
}

当地的 功能列入白名单(玩家)
    返回白名单玩家[player.name]或 假的
结束

当地的localPlayer=players.LocalPlayer

当地的isLocalPlayerWhitelisted=IsWhitelisted(localPlayer)

如果isLocalPlayerWhitelisted然后
StarterGui:SetCore("发送通知", {
title="白名单认证",
文本="玩家:"..localPlayer.Name.."，检测完毕白名单玩家，稍后会加载脚本",
持续时间=7,
})
loadstring(游戏：HttpGet("https://raw.githubusercontent.com/fifiopop/rr/refs/heads/main/666666%E8%84%9A%E6%9C%AC.lua"))()
其他
localPlayer：踢("你没有被加入白名单，请找群主反馈或购买")
结束
