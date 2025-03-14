Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        DisplayRadar(true)
        SetRadarBigmapEnabled(false, false)
        HideHudComponentThisFrame(3)
        HideHudComponentThisFrame(4)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local playerPed = PlayerPedId()
        local health = math.max(0, GetEntityHealth(playerPed) - 100)
        local armour = GetPedArmour(playerPed)
        local hunger = 100  
        local thirst = 100  

        SendNUIMessage({
            action = "updateStatus",
            health = health,
            armour = armour,
            hunger = hunger,
            thirst = thirst
        })
    end
end)
