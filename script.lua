-- Gui Générer grave a Gui to Lua
-- Le reste est fait par moi meme

local ScreenGui = Instance.new("ScreenGui")
local backgroud = Instance.new("Frame")
local message = Instance.new("TextBox")
local title = Instance.new("TextLabel")
local toggle = Instance.new("TextButton")
local spam = false

ScreenGui.Parent = game.CoreGui

backgroud.Name = "backgroud"
backgroud.Parent = ScreenGui
backgroud.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
backgroud.Position = UDim2.new(0.123931631, 0, 0.232000008, 0)
backgroud.Size = UDim2.new(0, 528, 0, 268)
backgroud.Active = true
backgroud.Draggable = true

message.Name = "message"
message.Parent = backgroud
message.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
message.Position = UDim2.new(0.0954092219, 0, 0.195761234, 0)
message.Size = UDim2.new(0, 427, 0, 27)
message.Font = Enum.Font.SourceSans
message.Text = "Message"
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextSize = 19.000

title.Name = "title"
title.Parent = backgroud
title.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
title.Position = UDim2.new(0, 0, -0.000716422917, 0)
title.Size = UDim2.new(0, 527, 0, 35)
title.Font = Enum.Font.SourceSans
title.Text = "Chat Spammer | OPEN SOURCE"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 22.000

toggle.Name = "toggle"
toggle.Parent = backgroud
toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
toggle.Position = UDim2.new(0.358424008, 0, 0.753343284, 0)
toggle.Size = UDim2.new(0, 148, 0, 42)
toggle.Font = Enum.Font.SourceSans
toggle.Text = "Spam START"
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.TextSize = 20.000

toggle.MouseButton1Down:connect(function()
	if spam == true then
		spam = false
		toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		toggle.Text = "Spam START"
	else
		spam = true
		toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		toggle.Text = "Spam STOP"
	end
end)
