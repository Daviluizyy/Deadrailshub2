-- 🚂 DeadRailsHub Loader v2 (com Key Diária e Anti-Ban)

-- 🔥 Gerador de Key automática baseada no dia
local date = os.date("*t")
local generatedKey = "DARK_" .. string.format("%02d%02d%04d", date.day, date.month, date.year)

-- ✅ Perguntar a Key pro usuário
local inputKey = tostring(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui").TextBox.Text)

if inputKey == generatedKey then
    print("✅ Key correta! Carregando GUI...")
    
    -- 🔥 Anti-ban simples (spoof nome + no kick)
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
    
    -- Carregar a GUI
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviluizyy/Deadrailshub2/main/gui.lua'))()
else
    warn("❌ Key incorreta! A key de hoje é: " .. generatedKey)
    setclipboard(generatedKey)
    print("🔑 Key copiada pro clipboard!")
end
