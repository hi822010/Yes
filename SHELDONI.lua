local gui = Instance.new("ScreenGui")
gui.Name = "SHELDONI BY NOKIA666"
gui.Parent = game.CoreGui

local Ui = Instance.new("Frame")
Ui.Size = UDim2.new(0.0, 400, 0.0, 300)
Ui.Position = UDim2.new(0.2, 89, 0.0, - 24)
Ui.BackgroundColor3 = Color3.new(1, 1, 1)
Ui.BorderColor3 = Color3.new(0, 0, 0)
Ui.BorderSizePixel = 0
Ui.Active = true
Ui.BackgroundTransparency = 1
Ui.Draggable = true
Ui.Parent = gui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(0.9, 37, 0.9, 28)
ImageLabel.Position = UDim2.new(0.0, 0, 0.0, 0)
ImageLabel.BackgroundColor3 = Color3.new(0, 0, 0)
ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
ImageLabel.Image = "rbxassetid://14902240136"
ImageLabel.ImageTransparency = 0.4
ImageLabel.Parent = Ui

ImageLabel.BackgroundTransparency = 1

local  close = Instance.new("TextButton")
 close.Size = UDim2.new(0.2, 0, 0.1, 0)
 close.Position = UDim2.new(0.7, 32, 0.0, 5)
 close.BackgroundColor3 = Color3.new(1, 1, 1)
 close.BorderColor3 = Color3.new(0, 0, 0)
 close.BorderSizePixel = 0
 close.Text = "Close"
 close.BackgroundTransparency = 0.5
 close.TextColor3 = Color3.new(0, 0, 0)
 close.Font = Enum.Font.Montserrat
 close.Parent = Ui
close.TextSize = 19
close.MouseButton1Click:Connect(function()
Ui:Remove()
end)

local Ser = Instance.new("TextBox")
Ser.Size = UDim2.new(0.3, 80, 0.1, 0)
Ser.Position = UDim2.new(0.2, 28, 0.0, 5)
Ser.BackgroundColor3 = Color3.new(1, 1, 1)
Ser.BorderColor3 = Color3.new(0, 0, 0)
Ser.BorderSizePixel = 0
Ser.Text = ""
Ser.TextColor3 = Color3.new(0, 0, 0)
Ser.BackgroundTransparency = 0.5
Ser.Font = Enum.Font.Montserrat
Ser.PlaceholderText = "Search His Thoughts"
Ser.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Ser.TextColor3 = Color3.new(0, 0, 0)
Ser.TextSize = 19
Ser.Parent = Ui

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.9, 29, 0.7, 6)
TextBox.Position = UDim2.new(0.0, 4, 0.1, 9)
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Text = ""
TextBox.PlaceholderText = "Execute His Thoughts"
TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.5
TextBox.Font = Enum.Font.Montserrat
TextBox.TextSize = 17
TextBox.Parent = Ui
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.ClearTextOnFocus = false
TextBox.MultiLine = true
TextBox.TextWrapped = true

local Exe = Instance.new("TextButton")
Exe.Size = UDim2.new(0.4, 19, 0.1, 0)
Exe.Position = UDim2.new(0.0, 4, 0.7, 50)
Exe.BackgroundColor3 = Color3.new(1, 1, 1)
Exe.BorderColor3 = Color3.new(0, 0, 0)
Exe.BorderSizePixel = 0
Exe.Text = "Execute"
Exe.BackgroundTransparency = 0.5
Exe.TextColor3 = Color3.new(0, 0, 0)
Exe.Font = Enum.Font.Montserrat
Exe.Parent = Ui
Exe.TextSize = 19
Exe.MouseButton1Click:Connect(function()
assert(loadstring(TextBox.Text))()
wait(1)
game.NetworkClient.ClientReplication:FireServer("Ugc.Workspace.FilteringEnabled = false;")
end)

local clea = Instance.new("TextButton")
clea.Size = UDim2.new(0.4, 50, 0.1, 0)
clea.Position = UDim2.new(0.4, 23, 0.7, 50)
clea.BackgroundColor3 = Color3.new(1, 1, 1)
clea.BorderColor3 = Color3.new(0, 0, 0)
clea.BorderSizePixel = 0
clea.Text = "Clear"
clea.BackgroundTransparency = 0.5
clea.TextColor3 = Color3.new(0, 0, 0)
clea.Font = Enum.Font.Montserrat
clea.Parent = Ui
clea.TextSize = 19
clea.MouseButton1Click:Connect(function()
TextBox.Text = ""
end)

local Scr = Instance.new("ScrollingFrame")
Scr.Size = UDim2.new(0.9, 29, 0.7, 6)
Scr.Position = UDim2.new(0.0, 4, 0.1, 9)
Scr.BackgroundColor3 = Color3.new(1, 1, 1)
Scr.BorderColor3 = Color3.new(0, 0, 0)
Scr.BorderSizePixel = 0
Scr.Parent = Ui
Scr.ScrollBarThickness = 0
Scr.Visible = false

Scr.BackgroundTransparency = 1

local Mrbean = Instance.new("TextButton")
Mrbean.Size = UDim2.new(0.9, 39, 0.0, 29)
Mrbean.Position = UDim2.new(0.0, 0, 0.0, 0)
Mrbean.BackgroundColor3 = Color3.new(1, 1, 1)
Mrbean.BorderColor3 = Color3.new(0, 0, 0)
Mrbean.BorderSizePixel = 0
Mrbean.Text = "MrBean Admin"
Mrbean.BackgroundTransparency = 0.5
Mrbean.TextColor3 = Color3.new(0, 0, 0)
Mrbean.Font = Enum.Font.Montserrat
Mrbean.Parent = Scr
Mrbean.TextSize = 19
Mrbean.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Test4267/mrbean/refs/heads/main/hh"))()
wait(1)
game.NetworkClient.ClientReplication:FireServer("Ugc.Workspace.FilteringEnabled = false;")
end)

local Steve = Instance.new("TextButton")
Steve.Size = UDim2.new(0.9, 39, 0.0, 29)
Steve.Position = UDim2.new(0.0, 0, 0.0, 33)
Steve.BackgroundColor3 = Color3.new(1, 1, 1)
Steve.BorderColor3 = Color3.new(0, 0, 0)
Steve.BorderSizePixel = 0
Steve.Text = "Steve"
Steve.BackgroundTransparency = 0.5
Steve.TextColor3 = Color3.new(0, 0, 0)
Steve.Font = Enum.Font.Montserrat
Steve.Parent = Scr
Steve.TextSize = 19
Steve.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"))()
wait(1)
game.NetworkClient.ClientReplication:FireServer("Ugc.Workspace.FilteringEnabled = false;")
end)

local Infinite = Instance.new("TextButton")
Infinite.Size = UDim2.new(0.9, 39, 0.0, 29)
Infinite.Position = UDim2.new(0.0, 0, 0.0, 65)
Infinite.BackgroundColor3 = Color3.new(1, 1, 1)
Infinite.BorderColor3 = Color3.new(0, 0, 0)
Infinite.BorderSizePixel = 0
Infinite.Text = "Infinite yield ss"
Infinite.BackgroundTransparency = 0.5
Infinite.TextColor3 = Color3.new(0, 0, 0)
Infinite.Font = Enum.Font.Montserrat
Infinite.Parent = Scr
Infinite.TextSize = 19
Infinite.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-Yield-ss-id-3-31749"))()
wait(1)
game.NetworkClient.ClientReplication:FireServer("Ugc.Workspace.FilteringEnabled = false;")
end)

local She = Instance.new("TextButton")

local R6 = Instance.new("TextButton")
R6.Size = UDim2.new(0.1, 39, 0.1, 0)
R6.Position = UDim2.new(0.0, 4, 0.7, 50)
R6.BackgroundColor3 = Color3.new(1, 1, 1)
R6.BorderColor3 = Color3.new(0, 0, 0)
R6.BorderSizePixel = 0
R6.Text = "RE"
R6.BackgroundTransparency = 0.5
R6.TextColor3 = Color3.new(0, 0, 0)
R6.Font = Enum.Font.Montserrat
R6.Parent = Ui
R6.TextSize = 19
R6.Visible = false
R6.MouseButton1Click:Connect(function()
if game.Players.LocalPlayer.Character then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)

local Ree = Instance.new("TextButton")
Ree.Size = UDim2.new(0.1, 39, 0.1, 0)
Ree.Position = UDim2.new(0.7, 34, 0.7, 50)
Ree.BackgroundColor3 = Color3.new(1, 1, 1)
Ree.BorderColor3 = Color3.new(0, 0, 0)
Ree.BorderSizePixel = 0
Ree.Text = "R6"
Ree.BackgroundTransparency = 0.5
Ree.TextColor3 = Color3.new(0, 0, 0)
Ree.Font = Enum.Font.Montserrat
Ree.Parent = Ui
Ree.TextSize = 19
Ree.Visible = false
Ree.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/refs/heads/main/r6_anims.lua"))()
end)

local ygcw = Instance.new("TextButton")
ygcw.Size = UDim2.new(0.5, 23, 0.1, 0)
ygcw.Position = UDim2.new(0.1, 47, 0.7, 50)
ygcw.BackgroundColor3 = Color3.new(1, 1, 1)
ygcw.BorderColor3 = Color3.new(0, 0, 0)
ygcw.BorderSizePixel = 0
ygcw.Text = "..game.Players.LocalPlayer.Name.."
ygcw.BackgroundTransparency = 0.5
ygcw.TextColor3 = Color3.new(0, 0, 0)
ygcw.Font = Enum.Font.Montserrat
ygcw.Parent = Ui
ygcw.TextSize = 19
ygcw.Visible = false

local Shee = Instance.new("TextButton")
Shee.Size = UDim2.new(0.2, 20, 0.1, 0)
Shee.Position = UDim2.new(0.0, 4, 0.0, 5)
Shee.BackgroundColor3 = Color3.new(1, 1, 1)
Shee.BorderColor3 = Color3.new(1, 1, 1)
Shee.BorderSizePixel = 0
Shee.Text = "Sheldoni"
Shee.BackgroundTransparency = 0.5
Shee.TextColor3 = Color3.new(0, 0, 0)
Shee.Font = Enum.Font.Montserrat
Shee.Parent = Ui
Shee.TextSize = 19
Shee.Visible = false
Shee.MouseButton1Click:Connect(function()
clea.Visible = true
Exe.Visible = true
Scr.Visible = false
Shee.Visible = false
R6.Visible = false
Ree.Visible = false
ygcw.Visible = false
She.Visible = true
TextBox.Visible = true
end)

She.Size = UDim2.new(0.2, 20, 0.1, 0)
She.Position = UDim2.new(0.0, 4, 0.0, 5)
She.BackgroundColor3 = Color3.new(1, 1, 1)
She.BorderColor3 = Color3.new(1, 1, 1)
She.BorderSizePixel = 0
She.Text = "Sheldoni"
She.BackgroundTransparency = 0.5
She.TextColor3 = Color3.new(0, 0, 0)
She.Font = Enum.Font.Montserrat
She.Parent = Ui
She.TextSize = 19
She.MouseButton1Click:Connect(function()
clea.Visible = false
Exe.Visible = false
Scr.Visible = true
Shee.Visible = true
R6.Visible = true
Ree.Visible = true
ygcw.Visible = true
She.Visible = false
TextBox.Visible = false
end)
