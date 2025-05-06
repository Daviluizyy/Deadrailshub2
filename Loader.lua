-- 🚂 Auto Bond Script by ChatGPT
if game.PlaceId ~= 15118838706 then
    return warn("❌ Script só funciona no Dead Rails!")
end

print("✅ Auto Bond iniciado...")

-- Função para coletar Bonds
local function collectBonds()
    for _, v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
        if v:IsA("TouchTransmitter") and v.Parent and v.Parent.Name == "Bond" then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
            task.wait(0.1)
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
            print("💣 Bond coletado!")
        end
    end
end

-- Loop infinito para farm
while task.wait(1) do
    pcall(collectBonds)
end
