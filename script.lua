-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local backgroud = Instance.new("Frame")
local message = Instance.new("TextBox")
local Title = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui

backgroud.Name = "backgroud"
backgroud.Parent = ScreenGui
backgroud.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
backgroud.Position = UDim2.new(0.0626780689, 0, 0.112000018, 0)
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

Title.Name = "Title"
Title.Parent = backgroud
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
Title.Position = UDim2.new(-0.00126262009, 0, -0.000716418028, 0)
Title.Size = UDim2.new(0, 528, 0, 35)
Title.Font = Enum.Font.SourceSans
Title.Text = "Chat Spammer | OPEN SOURCE"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22.000
