-- 🚂 DeadRailsHub Loader (100% FIXADO)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ✅ Gerador de Key automática (Key muda todo dia)
local date = os.date("*t")
local generatedKey = "DARK_" .. string.format("%02d%02d%04d", date.day, date.month, date.year)

-- 🖥️ Criar a tela pedindo Key
local ScreenGui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
ScreenGui.Name = "DeadRailsHub_KeySystem"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 3
Frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "🚂 DeadRailsHub - Key System"
Title.TextColor3 = Color3.fromRGB(255, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 20

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(0.8, 0, 0, 30)
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.PlaceholderText = "Digite sua Key aqui"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.TextSize = 18

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(0.8, 0, 0, 30)
Button.Position = UDim2.new(0.1, 0, 0.7, 0)
Button.Text = "Verificar Key"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 18

-- 🛡️ Anti-Ban simples
local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldNamecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "Kick" then
        return warn("🚫 Tentativa de Kick bloqueada!")
    end
    return oldNamecall(self, unpack(args))
end)

-- ✅ Quando o player clicar no botão
Button.MouseButton1Click:Connect(function()
    if TextBox.Text == generatedKey then
        print("✅ Key correta!")
        ScreenGui:Destroy() -- Fechar a tela de Key
        -- 🔥 Carregar a GUI principal
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviluizyy/Deadrailshub2/main/gui.lua'))()
    else
        warn("❌ Key incorreta! A Key de hoje é: " .. generatedKey)
        setclipboard(generatedKey)
        print("🔑 Key copiada pro clipboard!")
    end
end)
