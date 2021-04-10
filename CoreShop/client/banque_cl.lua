ESX = nil


Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

function DrawMissionText(msg, time)
    ClearPrints()
    SetTextEntry_2('STRING')
    AddTextComponentString(msg)
    DrawSubtitleTimed(time, 1)
  end

  local banque = {

    Base = { Title = "Création de Compte Bancaire", HeaderColor = {32, 205, 20} },
    Data = { currentMenu = "Création de Compte Bancaire" },
    Events = {

        onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentSlt, result)
		    if btn.name == "Compte Bancaire" then
			    OpenMenu("Compte Bancaire")
            elseif btn.name == "carte banquaire" then
                    TriggerServerEvent('marseille:achat', 60, "cartebanque", "Carte Banquaire")
            
              end
        end,
    },

    Menu = {
	    
		["Création de Compte Bancaire"] = {
			b = {
				{name = "Compte Bancaire", ask = "→→→", askX = true},
				{name = "~g~Information Carte Banquaire", ask = "", askX = true, Description = "~g~Attention à ne pas perdre votre carte banquaire car sinon vous ne pourez plus faire de dépot ou retrait bancaire!" },
				
			}
		},
		["Compte Bancaire"] = {
			b = {
                {name = "carte banquaire", ask = "~g~60$", askX = true},
			}
        },
    }
}


local creabanque = {
    {x = 241.12, y = 225.45, z = 106.28}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(creabanque) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, creabanque[k].x, creabanque[k].y, creabanque[k].z)

            if dist <= 2.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec le ~g~Banquier")
				if IsControlJustPressed(1,51) then 
                    CreateMenu(banque)
				end
            end
        end
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_bankman")

    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end

    ped = CreatePed("PED_TYPE_CIVMALE", "cs_bankman", 241.86, 227.03, 105.28, 160.91, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
end)


local blips = { {title="Banque Central", colour=2, id=108, x = 241.86, y = 227.03, z = 105.28} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.8) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 


