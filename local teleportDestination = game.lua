local teleportDestination = game.Workspace.TeleportDestination -- substitua "TeleportDestination" pelo nome do objeto de destino para teleportar o jogador

local function onTouch(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local player = game.Players:GetPlayerFromCharacter(character)
        if player then
            local teleportLocation = teleportDestination.Position -- obtém a posição do destino de teletransporte
            character:SetPrimaryPartCFrame(CFrame.new(teleportLocation)) -- teleporta o jogador para a nova posição
        end
    end
end

game.Workspace.TeleportTrigger.Touched:Connect(onTouch) -- substitua "TeleportTrigger" pelo nome do objeto que desencadeia o teletransporte
