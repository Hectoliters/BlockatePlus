-- Variables:
local player = game.Players.LocalPlayer
local commands = {}

-- Instances:
local Section = Instance.new("Frame")
local Content_2 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Label = Instance.new("TextLabel")
local Add = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")

-- Properties:

Section.Name = "CustomSection"
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 1.000
Section.Size = UDim2.new(1, 0, 0, 45)

Content_2.Name = "Content"
Content_2.Parent = Section
Content_2.AnchorPoint = Vector2.new(1, 0)
Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content_2.BackgroundTransparency = 1.000
Content_2.Position = UDim2.new(1, 0, 0, 32)
Content_2.Size = UDim2.new(1, -4, 0, 0)

UIListLayout.Parent = Content_2
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Label.Name = "Label"
Label.Parent = Section
Label.AnchorPoint = Vector2.new(1, 0)
Label.Position = UDim2.new(1, 0, 0, 0)
Label.Size = UDim2.new(1, 0, 0, 32)
Label.Font = Enum.Font.SourceSans
Label.Text = "Blockate+"
Label.TextSize = 32.000
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.TextYAlignment = Enum.TextYAlignment.Top

Add.Name = "Add"
Add.Parent = Label
Add.AnchorPoint = Vector2.new(1, 0.5)
Add.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Add.Position = UDim2.new(1, -4, 0.5, 0)
Add.Size = UDim2.new(1, -8, 1, -8)
Add.SizeConstraint = Enum.SizeConstraint.RelativeYY
Add.Visible = false
Add.Font = Enum.Font.Arial
Add.Text = "+"
Add.TextColor3 = Color3.fromRGB(0, 0, 0)
Add.TextScaled = true
Add.TextSize = 14.000
Add.TextWrapped = true
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Section.Parent = game.ReplicatedStorage

function CreateCommand(name, info)
    table.insert(commands, name)
    local Command = Instance.new("TextLabel")
    Command.Name = "Command"
    Command.Parent = Content_2
    Command.Active = true
    Command.BackgroundColor3 = Color3.fromRGB(248, 248, 248)
    Command.BackgroundTransparency = 1.000
    Command.LayoutOrder = 22
    Command.Position = UDim2.new(0, 4, 0, 0)
    Command.Selectable = true
    Command.Size = UDim2.new(1, -8, 0, 13)
    Command.Font = Enum.Font.SourceSans
    Command.Text = "!"..name.. " - "..info
    Command.TextColor3 = Color3.fromRGB(0, 0, 0)
    Command.TextSize = 14.000
    Command.TextWrapped = true
    Command.TextXAlignment = Enum.TextXAlignment.Left
    Command.TextYAlignment = Enum.TextYAlignment.Top
end 

player.Chatted:Connect(function(message)
    local command = message:gsub("!", "")
    if command == "cmds" then
        local CustomSection = game.ReplicatedStorage:FindFirstChild("CustomSection"):Clone()
        local Commands = player.PlayerGui.MainGUI:WaitForChild("Commands")
        local ScrollingFrame = Commands:WaitForChild("ScrollingFrame")
        task.wait()
        CustomSection.Parent = ScrollingFrame.Content
        ScrollingFrame.Search:Destroy()
        task.wait()
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, ScrollingFrame.CanvasSize.Y.Offset + Section.Size.Y.Offset)
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hectoliters/BlockatePlus/main/Content/Commands/"..command..".lua"))()
    end
end)

CreateCommand("mass (modification) (value)", "Modifies every block with a functionality")