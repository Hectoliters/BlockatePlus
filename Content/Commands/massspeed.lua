local player = game.Players.LocalPlayer

local CustomANC = Instance.new("ScreenGui")
local FeedbackFrame = Instance.new("TextLabel")

CustomANC.Name = "CustomANC"
CustomANC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomANC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FeedbackFrame.Name = "FeedbackFrame"
FeedbackFrame.Parent = CustomANC
FeedbackFrame.BackgroundTransparency = 1.000
FeedbackFrame.Position = UDim2.new(0.125, 0, 0.125, 0)
FeedbackFrame.Size = UDim2.new(0.75, 0, 0.75, 0)
FeedbackFrame.ZIndex = 5
FeedbackFrame.Font = Enum.Font.SourceSansLight
FeedbackFrame.Text = "Type the value you want to set the speed to"
FeedbackFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
FeedbackFrame.TextScaled = true
FeedbackFrame.TextStrokeTransparency = 0.000
FeedbackFrame.TextWrapped = true

local Property = player.Chatted:Wait()
local Value = tonumber(Property)
if Value then
    writefile("BlockatePlus/MassSpeed.txt", Property)
    FeedbackFrame.Text = "Saving..."
    task.wait(1)
    CustomANC:Destroy()
    script:Destroy()
else
    FeedbackFrame.Text = "It has to be a number smartie"
    task.wait(3)
    CustomANC:Destroy()
    script:Destroy()
end