-- 🚂 DeadRailsHub GUI (Tema Vermelho Neon)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UnicornButton = Instance.new("TextButton")
local BondButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0, 220, 0, 160)
Frame.Position = UDim2.new(0.5, -110, 0.5, -80)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderSizePixel = 3
Frame.Parent = ScreenGui
Frame.Active = true
Frame.Draggable = true

UnicornButton.Size = UDim2.new(0, 200, 0, 50)
UnicornButton.Position = UDim2.new(0, 10, 0, 10)
UnicornButton.Text = "🦄 Auto Unicorn"
UnicornButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
UnicornButton.TextColor3 = Color3.fromRGB(255, 255, 255)
UnicornButton.Font = Enum.Font.SourceSansBold
UnicornButton.TextSize = 24
UnicornButton.Parent = Frame

BondButton.Size = UDim2.new(0, 200, 0, 50)
BondButton.Position = UDim2.new(0, 10, 0, 80)
BondButton.Text = "💣 Auto Bond"
BondButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BondButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BondButton.Font = Enum.Font.SourceSansBold
BondButton.TextSize = 24
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
