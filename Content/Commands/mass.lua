-- Essential:

local CustomANC = Instance.new("ScreenGui")
local FeedbackFrame = Instance.new("TextLabel")
local Speed = tonumber(readfile("BlockatePlus/MassSpeed.txt"))
if Speed == 0 then
    Speed = 1
end
CustomANC.Name = "CustomANC2"
CustomANC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CustomANC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FeedbackFrame.Name = "FeedbackFrame"
FeedbackFrame.Visible = true
FeedbackFrame.Parent = CustomANC
FeedbackFrame.BackgroundTransparency = 1.000
FeedbackFrame.Position = UDim2.new(0.125, 0, 0.125, 0)
FeedbackFrame.Size = UDim2.new(0.75, 0, 0.75, 0)
FeedbackFrame.ZIndex = 5
FeedbackFrame.Font = Enum.Font.SourceSansLight
FeedbackFrame.Text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
FeedbackFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
FeedbackFrame.TextScaled = true
FeedbackFrame.TextStrokeTransparency = 0.000
FeedbackFrame.TextWrapped = true

-- Variables:

local player = game.Players.LocalPlayer

-- Functionalities

Functionalities = {
    ["soundblock"] = function()
        FeedbackFrame.Text = "Type the Audio ID."
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("soundblock", {v, Value})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end,

    ["sign"] = function()
        FeedbackFrame.Text = "Type the sign text."
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("sign", {v, Value})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end,

    ["tripper"] = function()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("tripper",{v})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end,

    ["kill"] = function()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("kill",{v})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end,

    ["spotsign"] = function()
        FeedbackFrame.Text = "Type the spotsign text."
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("spotsign", {v, Value})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end, 
    
    ["baller"] = function()
        FeedbackFrame.Text = "Type the maximum baller time."
    local Value = player.Chatted:Wait()
    local Blocks = game.Workspace.Blocks:GetChildren()
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.EditBlock:FireServer("baller", {v, Value})
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end,

    ["delete"] = function()
    local Blocks = game.Workspace.Blocks:GetChildren()
    FeedbackFrame.Visible = true
    local lasti = 1
    for i, v in pairs(Blocks) do
    if i <= lasti then
        task.wait()
    game.ReplicatedStorage.Sockets.Edit.Delete:FireServer(v)
    FeedbackFrame.Text = math.round(i/Speed).."/"..math.round(#Blocks/Speed)
    else
        lasti = i+Speed
    end
    end
    CustomANC:Destroy()
    task.wait()
    script:Destroy()
    end;
    }

-- Properties:

FeedbackFrame.Text = "Type the functionality you want to mass add."

-- Functions:
function HandleMass(Property)
    local Property = Functionalities[Property]
    if Property == nil then
        FeedbackFrame.Text = "Thats not a functionality."
        task.wait(3)
        CustomANC:Destroy()
        task.wait()
        script:Destroy()
    else
        return Property
    end
end
local Property = player.Chatted:Wait()
print(Property)
HandleMass(Property)()