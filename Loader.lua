-- 🚂 DeadRailsHub Loader com Anti-Key
local key = "DARK_SCRIPTER_123" -- ✅ Sua key secreta
local userInput = tostring(game:HttpGet("https://pastebin.com/raw/3dA6Jqsb")) -- Só exemplo, depois pode ser seu próprio sistema

-- Verificar Key
if userInput == key then
    print("✅ Key correta! Carregando GUI...")
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviluizyy/Deadrailshub2/main/gui.lua'))()
else
    warn("❌ Key incorreta! Peça no Discord: discord.gg/SEUSERVER")
end
