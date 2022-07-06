local ScreenGui = Instance.new("ScreenGui")
local backgroud = Instance.new("Frame")
local message = Instance.new("TextBox")
local title = Instance.new("TextLabel")
local toggle = Instance.new("TextButton")
local quit = Instance.new("TextButton")
local slider = Instance.new("Frame")
local sliderCharge = Instance.new("Frame")
local sliderButtun = Instance.new("TextButton")
local sliderInfo = Instance.new("TextLabel")
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")
local spam = false
local lock = true
local speed = 5

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
message.BorderSizePixel = 2
message.Position = UDim2.new(0.0859395266, 0, 0.195761263, 0)
message.Size = UDim2.new(0, 437, 0, 27)
message.Font = Enum.Font.SourceSans
message.Text = "Write your message!"
message.TextColor3 = Color3.fromRGB(255, 255, 255)
message.TextSize = 19.000

title.Name = "title"
title.Parent = backgroud
title.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
title.Position = UDim2.new(0.00189393945, 0, -0.00444776611, 0)
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

quit.Name = "quit"
quit.Parent = backgroud
quit.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
quit.BorderSizePixel = 0
quit.Position = UDim2.new(0.9375, 0, 0, 0)
quit.Size = UDim2.new(0, 33, 0, 33)
quit.Font = Enum.Font.SourceSans
quit.Text = "╳"
quit.TextColor3 = Color3.fromRGB(255, 255, 255)
quit.TextSize = 30.000
quit.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

slider.Name = "slider"
slider.Parent = backgroud
slider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
slider.BackgroundTransparency = 0.010
slider.BorderSizePixel = 2
slider.Position = UDim2.new(0.0859395266, 0, 0.451492548, 0)
slider.Size = UDim2.new(0, 437, 0, 25)

sliderCharge.Name = "slider"
sliderCharge.Parent = slider
sliderCharge.BackgroundColor3 = Color3.fromRGB(0, 0, 127)
sliderCharge.Position = UDim2.new(0, 0, 0, 0)
sliderCharge.Size = UDim2.new(0, 218, 0, 25)

sliderButtun.Name = "sliderButtun"
sliderButtun.Parent = slider
sliderButtun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sliderButtun.Position = UDim2.new(0.473067939, 0, -0.400000006, 0)
sliderButtun.Size = UDim2.new(0, 20, 0, 46)
sliderButtun.Font = Enum.Font.SourceSans
sliderButtun.Text = ""
sliderButtun.TextColor3 = Color3.fromRGB(0, 0, 0)
sliderButtun.TextSize = 14.000

sliderInfo.Name = "sliderInfo"
sliderInfo.Parent = slider
sliderInfo.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sliderInfo.BorderSizePixel = 0
sliderInfo.Position = UDim2.new(0, 0, 1.44000006, 0)
sliderInfo.Size = UDim2.new(0, 426, 0, 17)
sliderInfo.Font = Enum.Font.SourceSans
sliderInfo.Text = "Time sleep: 5s"
sliderInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
sliderInfo.TextSize = 14.000

toggle.MouseButton1Down:connect(function()
	if spam then
		spam = false
		toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
		toggle.Text = "Spam START"
	else
		spam = true
		toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		toggle.Text = "Spam STOP"
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message.Text, "all")
	end
end)

quit.MouseButton1Down:connect(function()
	if backgroud.Active and backgroud.Visible then
		backgroud.Active = false
		backgroud.Visible = false
	else
		backgroud.Active = true
		backgroud.Visible = true
	end
end)

sliderButtun.MouseButton1Down:Connect(function()
	lock = false
end)

uis.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and backgroud.Active and backgroud.Visible then
		lock = true
	end
end)

uis.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if lock == false and backgroud.Active and backgroud.Visible then
			local mouseLoc = uis:GetMouseLocation()
			local btnPos = sliderButtun.Position
			local relativePos = mouseLoc.X-slider.AbsolutePosition.X
			local percentage = math.clamp(relativePos/slider.AbsoluteSize.X, 0, 1)
			sliderButtun.Position = UDim2.new(percentage - 0.0228833, 0, btnPos.Y.Scale, btnPos.X.Offset)
			sliderCharge.Size = UDim2.new(0, math.round(percentage*437), 0, 25)
			sliderInfo.Text = "Time sleep: " .. math.round(percentage*5) .. "s"
			speed = math.round(percentage*5)
		end
	end
end)

while wait(speed) do
	if backgroud.Active and backgroud.Visible and spam then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message.Text, "all")
	end
end
