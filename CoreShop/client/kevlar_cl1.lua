local GotArmour = false
local Register = false

BproofBroke = "~r~Votre Gilet par balle est trop usée"


ragdol = false 


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local Ped = GetPlayerPed(-1)
        local Armour = GetPedArmour(Ped)
        --SetPedToRagdoll(myPed, 1000, 1000, 0, 0, 0, 0)
        if Armour >=1 then            -- Check if he got Armour
            if Armour <= 25 then      -- Check if he got max 25 Armour
                if not GotArmour then
                    AddMaleBulletProff(1)
                end
                GotArmour = true      -- Say my ped got kevlar   
            end
        end
        if Armour >=50 then           --Check If he got 50 of Armour
            if Armour <=75 then   
                if not GotArmour then
                    AddMaleBulletProff(2)
                end   
                GotArmour = true      -- Say my ped got kevlar  
            end
        end
        if Armour >= 75 then          -- Check if he got over 75 of Armour
            if not GotArmour then
                    AddMaleBulletProff(3)
                end  
            GotArmour = true          -- Say my ped got kevlar  
        end
        if GotArmour then             --Check if he normaly got Kevlar
            if Armour <= 0 then       --Check if the kevlar Broke
                Notify(BproofBroke)   --Notify  
                local Ped = GetPlayerPed(source)
                RemoveeBproof()       --Del the Kevlar
                GotArmour = false     --Say my ped don't got kevlar
                TriggerEvent("Homer:Ragdol", source, 50000)  --Ragdoll the guy
            end
        end
        
    end
end)

RegisterCommand('kevlar5', function(source, args)
    local ammount = args[1]
    local Ped = GetPlayerPed(source)
    SetPedArmour(Ped, ammount)
end, false)
--Mes Event
RegisterNetEvent("Homer:kevlar")
AddEventHandler("Homer:kevlar", function(source, ammount)
    local Ped = GetPlayerPed(source)
    SetPedArmour(Ped, 100)
end)

RegisterNetEvent("Homer:Ragdol")
AddEventHandler("Homer:Ragdol", function(source, time)
    local Ped = GetPlayerPed(source)
    SetPedToRagdoll(Ped, time, time, 0, 0, 0, 0)  
end)
--Mes fonction
function RemoveeBproof()
    TriggerEvent('skinchanger:getSkin', function(skin)
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 0, ['bproof_2'] = 0,})
    end)
end
function AddMaleBulletProff(lvl)
    local ped = GetPlayerPed(-1)
    local Homme = IsPedMale(ped)
    if lvl == 1 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 2, ['bproof_2'] = 1,})
        end)   
    end
    if lvl == 2 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 12, ['bproof_2'] = 1,})
            else
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 17, ['bproof_2'] = 2,})
            end
        end) 
    end
    if lvl == 3 then
        TriggerEvent('skinchanger:getSkin', function(skin)
            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 12, ['bproof_2'] = 1,})
            else
                TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 18, ['bproof_2'] = 2,})
            end
        end) 
    end
end
function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end