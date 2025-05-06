-- 🚂 DeadRailsHub GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UnicornButton = Instance.new("TextButton")
local BondButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Parent = ScreenGui

UnicornButton.Size = UDim2.new(0, 180, 0, 50)
UnicornButton.Position = UDim2.new(0, 10, 0, 10)
UnicornButton.Text = "🦄 Auto Unicorn"
UnicornButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
UnicornButton.Parent = Frame

BondButton.Size = UDim2.new(0, 180, 0, 50)
BondButton.Position = UDim2.new(0, 10, 0, 70)
BondButton.Text = "💣 Auto Bond"
BondButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
BondButton.Parent = Frame

-- Funções dos botões
UnicornButton.MouseButton1Click:Connect(function()
    print("🦄 Auto Unicorn Ativado!")
    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("TextButton") and v.Name == "Unicorn" then
            fireclickdetector(v)
            print("🦄 Unicorn clicado!")
        end
    end
end)

BondButton.MouseButton1Click:Connect(function()
    print("💣 Auto Bond Ativado!")
    for i,v in pairs(game:GetDescendants()) do
        if v:IsA("TextButton") and v.Name == "Bond" then
            fireclickdetector(v)
            print("💣 Bond clicado!")
        end
    end
end)
