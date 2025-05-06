-- 🚂 DeadRailsHub Pro Fluxo 🚂 by ChatGPT e Daviluizyy
if game.PlaceId ~= 15118838706 then
    return warn("❌ Script só funciona no Dead Rails!")
end

-- Anti Kick no Fluxo
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Criar GUI Vermelha Neon
local screen = Instance.new("ScreenGui")
screen.Name = "DeadRailsHub_GUI"
screen.ResetOnSpawn = false
screen.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(255, 50, 50)
frame.Active = true
frame.Draggable = true
frame.Parent = screen

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.Text = "🚂 DeadRailsHub Pro Fluxo"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24
title.Parent = frame

local btn1 = Instance.new("TextButton")
btn1.Size = UDim2.new(0.8, 0, 0, 40)
btn1.Position = UDim2.new(0.1, 0, 0.4, 0)
btn1.Text = "Auto Unicorn 🦄"
btn1.TextColor3 = Color3.fromRGB(255, 255, 255)
btn1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn1.Font = Enum.Font.SourceSansBold
btn1.TextSize = 20
btn1.Parent = frame

btn1.MouseButton1Click:Connect(function()
    print("🚀 Auto Unicorn ativado no Fluxo!")
    -- 👉 Aqui vai o código do auto farm Unicorn (se quiser)
end)

local btn2 = Instance.new("TextButton")
btn2.Size = UDim2.new(0.8, 0, 0, 40)
btn2.Position = UDim2.new(0.1, 0, 0.7, 0)
btn2.Text = "Auto Bond 💣"
btn2.TextColor3 = Color3.fromRGB(255, 255, 255)
btn2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn2.Font = Enum.Font.SourceSansBold
btn2.TextSize = 20
btn2.Parent = frame

btn2.MouseButton1Click:Connect(function()
    print("🚀 Auto Bond ativado no Fluxo!")
    -- 👉 Aqui vai o código do auto farm Bond (se quiser)
end)

print("✅ DeadRailsHub carregado no Fluxo com sucesso!")
