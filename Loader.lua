-- 🚂 DeadRailsHub Loader (Versão blindada pra KRNL + Dead Rails)
-- By ChatGPT pra Daviluizyy

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- 🔑 Key automática do dia
local keyHoje = "DARK_" .. os.date("%d%m%Y")

-- 🛡️ Anti-kick
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "Kick" then
        return warn("🚫 Kick bloqueado pelo DeadRailsHub!")
    end
    return old(self, ...)
end)

-- 🚀 Criar GUI dentro do PlayerGui (garantido no KRNL)
local screen = Instance.new("ScreenGui")
screen.Name = "DeadRailsHub_KEY"
screen.ResetOnSpawn = false
screen.Parent = playerGui  -- aqui funciona no Dead Rails

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Parent = screen

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "🚂 DeadRailsHub Key"
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(10, 0, 0)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20
title.Parent = frame

local box = Instance.new("TextBox")
box.Size = UDim2.new(0.8, 0, 0, 30)
box.Position = UDim2.new(0.1, 0, 0.4, 0)
box.PlaceholderText = "Digite a Key"
box.Text = ""
box.TextColor3 = Color3.fromRGB(255, 255, 255)
box.BackgroundColor3 = Color3.fromRGB(50, 0, 0)
box.Font = Enum.Font.SourceSans
box.TextSize = 18
box.Parent = frame

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0.8, 0, 0, 30)
btn.Position = UDim2.new(0.1, 0, 0.7, 0)
btn.Text = "Verificar"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn.Font = Enum.Font.SourceSansBold
btn.TextSize = 18
btn.Parent = frame

btn.MouseButton1Click:Connect(function()
    if box.Text == keyHoje then
        screen:Destroy()
        print("✅ Key correta! Abrindo GUI...")
        -- Carrega seu GUI principal:
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Daviluizyy/Deadrailshub2/main/gui.lua"))()
    else
        warn("❌ Key errada! A Key correta é: " .. keyHoje)
        setclipboard(keyHoje)
        print("🔑 Copiei a Key certa pra você: " .. keyHoje)
    end
end)
