if not isfolder("BlockatePlus") then
    makefolder("BlockatePlus")
    writefile("BlockatePlus/MassSpeed.txt", "0")
    print(readfile("BlockatePlus/MassSpeed.txt"))
end

-- Variables:
local player = game.Players.LocalPlayer
local commands = {}

-- Instances:

local WorldMenu = Instance.new("Frame")
local TabsFrame = Instance.new("Frame")
local Info = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Main = Instance.new("Frame")
local Exit = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")

--Properties:

WorldMenu.Name = "WorldMenu"
WorldMenu.Parent = player.PlayerGui.MainGUI
WorldMenu.Active = true
WorldMenu.AnchorPoint = Vector2.new(0.5, 0.5)
WorldMenu.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WorldMenu.Position = UDim2.new(0.5, 0, 0.527956963, 0)
WorldMenu.Size = UDim2.new(0, 400, 0, 339)

TabsFrame.Name = "TabsFrame"
TabsFrame.Parent = WorldMenu
TabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabsFrame.BackgroundTransparency = 1.000
TabsFrame.LayoutOrder = 3
TabsFrame.Position = UDim2.new(0, 0, 0.150000006, 21)
TabsFrame.Size = UDim2.new(1, 0, 0, 263)

Info.Name = "Info"
Info.Parent = TabsFrame
Info.AnchorPoint = Vector2.new(0.5, 0)
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.5, 0, 0, 0)
Info.Size = UDim2.new(1, 0, 1, 0)

TextLabel.Parent = Info
TextLabel.Active = true
TextLabel.AnchorPoint = Vector2.new(0.5, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(250, 250, 250)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.5, 0, 0.114068441, 0)
TextLabel.Size = UDim2.new(0, 350, 0, 175)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "In order to see every command, type !cmds+, This utility script is still in active development so expect more features soon!"
TextLabel.TextColor3 = Color3.fromRGB(161, 161, 161)
TextLabel.TextSize = 15.000
TextLabel.TextWrapped = true

UIListLayout.Parent = WorldMenu
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 7)

Main.Name = "Main"
Main.Parent = WorldMenu
Main.AnchorPoint = Vector2.new(0.5, 0)
Main.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
Main.Position = UDim2.new(0.5, 0, 0, 7)
Main.Size = UDim2.new(1, -15, 0, 60)

Exit.Name = "Exit"
Exit.Parent = Main
Exit.AnchorPoint = Vector2.new(1, 0.5)
Exit.BackgroundColor3 = Color3.fromRGB(255, 65, 52)
Exit.Position = UDim2.new(1, -4, 0.5, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.Image = "rbxassetid://5653354609"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Exit

UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = Main

TextLabel_2.Parent = Main
TextLabel_2.Active = true
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(250, 250, 250)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0, 0)
TextLabel_2.Size = UDim2.new(1, -50, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "Welcome to Blockate+"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 25.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(113, 113, 113)
TextLabel_2.TextStrokeTransparency = 0.500
TextLabel_2.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = WorldMenu

Exit.MouseButton1Click:Connect(function()
    WorldMenu:Destroy()
end)

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
Section.Size = UDim2.new(1, 0, 0, 45)
Section.BackgroundTransparency = 1.000

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
    Section.Size = UDim2.new(1, 0, 0, Section.Size.Y.Offset + 13)
    Command.TextSize = 14.000
    Command.TextWrapped = true
    Command.TextXAlignment = Enum.TextXAlignment.Left
    Command.TextYAlignment = Enum.TextYAlignment.Top
end 

player.Chatted:Connect(function(message)
    local command = message:gsub("!", "")
    local command = command:gsub(" ", "")
    if command == "cmds" then
        local CustomSection = game.ReplicatedStorage:FindFirstChild("CustomSection"):Clone()
        local Commands = player.PlayerGui.MainGUI:WaitForChild("Commands")
        local ScrollingFrame = Commands:WaitForChild("ScrollingFrame")
        task.wait()
        CustomSection.Parent = ScrollingFrame.Content
        task.wait()
        ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, ScrollingFrame.CanvasSize.Y.Offset + Section.Size.Y.Offset)
    else
        for _, v in pairs(commands) do
            if command == v then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Hectoliters/BlockatePlus/main/Content/Commands/"..command..".lua"))()
            end
        end
    end
end)

CreateCommand("mass", "Modifies every block with a functionality")
CreateCommand("mass speed", "Modifies the speed in which mass occours (will skip blocks)")
CreateCommand("terminal", "Opens a terminal that allows you to program commands")
Section.Parent = game.ReplicatedStorage