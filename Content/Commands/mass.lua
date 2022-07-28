-- Variables:

local player = game.Players.LocalPlayer

-- Functionalities

Functionalities = {
    ["Audio"] = function()
    Public("Type the Audio ID.")
    local ID = player.Chatted:Wait().message
    local Blocks = game.Workspace.Blocks:GetChildren()
    for _, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("soundblock", {v, ID})
    end
    end
    }

-- Properties:

function Public(Text)

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
FeedbackFrame.Text = Text
FeedbackFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
FeedbackFrame.TextScaled = true
FeedbackFrame.TextStrokeTransparency = 0.000
FeedbackFrame.TextWrapped = true

task.wait(3)

CustomANC:Destroy()
end

Public("Type the functionality you want to mass add.")

-- Functions:
function HandleMass(Property)
    local Property = Functionalities[Property]
    if Property == nil then
        Public("Thats not a functionality.")
    end
    return Property
end
local Property = player.Chatted:Wait().message
HandleMass(Property)