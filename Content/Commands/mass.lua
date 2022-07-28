-- Essential:

local CustomANC = Instance.new("ScreenGui")
local FeedbackFrame = Instance.new("TextLabel")

CustomANC.Name = "CustomANC2"
CustomANC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomANC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FeedbackFrame.Name = "FeedbackFrame"
FeedbackFrame.Visible = false
FeedbackFrame.Parent = CustomANC
FeedbackFrame.BackgroundTransparency = 1.000
FeedbackFrame.Position = UDim2.new(0.125, 0, 0.125, 0)
FeedbackFrame.Size = UDim2.new(0.75, 0, 0.75, 0)
FeedbackFrame.ZIndex = 5
FeedbackFrame.Font = Enum.Font.SourceSansLight
FeedbackFrame.Text = "1"
FeedbackFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
FeedbackFrame.TextScaled = true
FeedbackFrame.TextStrokeTransparency = 0.000
FeedbackFrame.TextWrapped = true

-- Variables:

local player = game.Players.LocalPlayer

-- Functionalities

Functionalities = {
    ["soundblock"] = function()
    Public("Type the Audio ID.")
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("soundblock", {v, Value})
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy(),

    ["sign"] = function()
    Public("Type the sign text.")
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("sign", {v, Value})
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy(),

    ["trip"] = function()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("trip", v)
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy(),

    ["kill"] = function()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("kill", v)
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy(),

    ["spotsign"] = function()
    Public("Type the spotsign text.")
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("spotsign", {v, Value})
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy(), 
    
    ["baller"] = function()
    Public("Type the maximum baller time.")
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    for i, v in pairs(Blocks) do
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("baller", {v, Value})
    FeedbackFrame.Text = i.."/"..#Blocks
    task.wait()
    end
    end;
    script:Destroy()
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
    else
        return Property
    end
end
local Property = player.Chatted:Wait()
print(Property)
HandleMass(Property)()