ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    end
end)


RegisterNetEvent('cosasvariadas:kevlar')
AddEventHandler('cosasvariadas:kevlar', function()

    local playerPed = PlayerPedId()

    AddArmourToPed(playerPed,100)
    SetPedArmour(playerPed, 100)
	ESX.ShowNotification("~g~Vous venez d'utiliser un gilet par balle lourd !")

end)

RegisterNetEvent('cosasvariadas:kevlar2')
AddEventHandler('cosasvariadas:kevlar2', function()

    local playerPed = PlayerPedId()

    AddArmourToPed(playerPed,50)
    SetPedArmour(playerPed, 50)
	ESX.ShowNotification("~g~Vous venez d'utiliser un gilet par balle léger !")

end)
    