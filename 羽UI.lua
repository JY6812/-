game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『羽脚本』"; Text ="欢迎大家找作者提意见"; Icon = "rbxassetid://18107430261"; Duration = 4; })
 wait(2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/JY6812/-/refs/heads/main/%E7%BE%BDUI.txt"))()

local ui = loadstring(game:HttpGet("https://pastebin.com/raw/1LLBCnwv"))()
local win = ui:new("羽脚本proMax")

local UITab1 = win:Tab("『公告』",'7734068321')

local about = UITab1:section("作者发话",true)

about:Label("羽脚本")
about:Label("作者QQ：3593096320")
about:Label("QQ主群：1016096895")
about:Label("作者：白羽")
about:Label("脚本持续更新中")
about:Label("脚本疯狂优化中")

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local UITab3 = win:Tab("『通用』",'16060333448')

local about = UITab3:section("『通用』",true)

about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)