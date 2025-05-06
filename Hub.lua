-- [🚂 Dead Rails Hub by DARK_SCRIPTER 🚂 Loaded!]
print("[🚂 Dead Rails Hub by DARK_SCRIPTER 🚂 Loaded!]")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeadRailsHub"
ScreenGui.Parent = game.CoreGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 220, 0, 300)
mainFrame.Position = UDim2.new(0, 20, 0, 20)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = ScreenGui

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 50, 0, 50)
logo.Position = UDim2.new(0.5, -25, 0, 5)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://4483345998"
logo.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 60)
title.Text = "🚂 Dead Rails Hub by DARK_SCRIPTER 🚂"
title.TextColor3 = Color3.fromRGB(255, 170, 0)
title.TextSize = 16
title.Font = Enum.Font.SourceSansBold
title.BackgroundTransparency = 1
title.Parent = mainFrame

local unicornButton = Instance.new("TextButton")
unicornButton.Size = UDim2.new(1, -20, 0, 40)
unicornButton.Position = UDim2.new(0, 10, 0, 110)
unicornButton.Text = "Auto Unicorn: OFF"
unicornButton.BackgroundColor3 = Color3.fromRGB(255, 200, 200)
unicornButton.Parent = mainFrame

local bondButton = Instance.new("TextButton")
bondButton.Size = UDim2.new(1, -20, 0, 40)
bondButton.Position = UDim2.new(0, 10, 0, 160)
bondButton.Text = "Auto Bond: OFF"
bondButton.BackgroundColor3 = Color3.fromRGB(200, 200, 255)
bondButton.Parent = mainFrame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(1, -20, 0, 40)
closeButton.Position = UDim2.new(0, 10, 0, 210)
closeButton.Text = "Fechar GUI"
closeButton.BackgroundColor3 = Color3.fromRGB(255, 150, 150)
closeButton.Parent = mainFrame

getgenv().farmUnicorn = false
function autoUnicorn()
    while true do
        if getgenv().farmUnicorn then
            local unicorn = game.Workspace:FindFirstChild("Unicorn")
            if unicorn then
                LocalPlayer.Character.HumanoidRootPart.CFrame = unicorn.CFrame
                local prompt = unicorn:FindFirstChildOfClass("ProximityPrompt")
                if prompt then
                    fireproximityprompt(prompt)
                end
            end
        end
        wait(1)
    end
end

getgenv().farmBond = false
function autoBond()
    while true do
        if getgenv().farmBond then
            for _, bond in pairs(game.Workspace:GetChildren()) do
                if bond.Name == "Bond" and bond:IsA("Part") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = bond.CFrame
                    local prompt = bond:FindFirstChildOfClass("ProximityPrompt")
                    if prompt then
                        fireproximityprompt(prompt)
                    end
                    wait(0.5)
                end
            end
        end
        wait(1)
    end
end

spawn(autoUnicorn)
spawn(autoBond)

unicornButton.MouseButton1Click:Connect(function()
    getgenv().farmUnicorn = not getgenv().farmUnicorn
    unicornButton.Text = "Auto Unicorn: " .. (getgenv().farmUnicorn and "ON" or "OFF")
    unicornButton.BackgroundColor3 = getgenv().farmUnicorn and Color3.fromRGB(200, 255, 200) or Color3.fromRGB(255, 200, 200)
end)

bondButton.MouseButton1Click:Connect(function()
    getgenv().farmBond = not getgenv().farmBond
    bondButton.Text = "Auto Bond: " .. (getgenv().farmBond and "ON" or "OFF")
    bondButton.BackgroundColor3 = getgenv().farmBond and Color3.fromRGB(200, 255, 200) or Color3.fromRGB(200, 200, 255)
end)

closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
    closeButton.Text = mainFrame.Visible and "Fechar GUI" or "Abrir GUI"
end)
