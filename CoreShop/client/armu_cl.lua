ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

local MenuArmurie = {

    Base = { Title = "Armurerie", HeaderColor = {255,1,1} },
    Data = { currentMenu = "Armurerie" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
		    if btn.name == "Arme Blanches" then
			    OpenMenu("Arme Blanche")
            elseif btn.name == "Couteau" then
                    TriggerServerEvent('marseille:buy', 250, "weapon_knife", "Couteau")
            elseif btn.name == "Batte" then 
                    TriggerServerEvent('marseille:buy', 400, "weapon_bat", "Batte")
            elseif btn.name == "Cran d'arrêt" then 
                    TriggerServerEvent('marseille:buy', 900, "weapon_switchblade", "Cran d'arrêt")
            elseif btn.name == "Lampe Torche" then 
                    TriggerServerEvent('marseille:buy', 100, "weapon_flashlight", "Lampe Torche")
            elseif btn.name == "Katana" then 
                    TriggerServerEvent('marseille:buy', 700, "weapon_katana", "Katana")
			elseif btn.name == "Armes Légères" then 
			       OpenMenu("Armes Légères")
		    elseif btn.name == "Pistolet" then
			       TriggerServerEvent('marseille:buy', 40000, "weapon_pistol", "Pistolet")
		    elseif btn.name == "Pistolet Vintage" then
			       TriggerServerEvent('marseille:buy', 45000, "weapon_vintagepistol", "Pistolet Vintage")
		    elseif btn.name == "Pistolet Calibre 50" then
			       TriggerServerEvent('marseille:buy', 50000, "weapon_pistol50", "Pistolet Calibre 50")
		    elseif btn.name == "Accessoires | Protection" then
			       OpenMenu ("Accessoires | Protection")
		    elseif btn.name == "Chargeurs simples" then
			       TriggerServerEvent('marseille:buy2', 250, "clip", "Chargeurs simples")
		    elseif btn.name == "Gilet pare-balles leger" then
			       TriggerServerEvent('marseille:buy2', 5000, "kevlar2", "Gilet pare-balles leger")
		    elseif btn.name == "Gilet pare-balles lourd" then 
			       TriggerServerEvent('marseille:buy2', 10000, "kevlar", "Gilet pare-balles lourd")
              end
        end,
    },

    Menu = {
	    
		["Armurerie"] = {
			b = {
				{name = "Arme Blanches", ask = "→→→", askX = true},
				{name = "Armes Légères", ask = "→→→", askX = true},
				{name = "~r~-----------------------------------------------------------------------", ask = "", askX = true},
				{name = "Accessoires | Protection", ask = "→→→", askX = true},
				{name = "~r~-----------------------------------------------------------------------", ask = "", askX = true},
				{name = "~r~Information concernant le PPA", ask = "", askX = true, Description = "Pour obtenir le PPA presenter vous au commissariat de LSPD . Prix : ~r~25000 $" },
				{name = "~r~Sanction", ask = "", askX = true, Description = "Le PPA est obligatoire est puni par la loi de ~r~150000$ ~w~d'amende et 6 mois de prison ferme"},
				
			}
		},
		["Arme Blanche"] = {
			b = {
                {name = "Couteau", ask = "~g~250$", askX = true},
                {name = "Batte", ask = "~g~400$", askX = true},
                {name = "Cran d'arrêt", ask = "~g~900$", askX = true},
                {name = "Lampe Torche", ask = "~g~100$", askX = true},
			}
		},
		["Armes Légères"] = {
			b = {
				{name = "Pistolet", ask = "~g~40000$", askX = true},
				{name = "Pistolet Vintage", ask = "~g~45000$", askX = true},
				{name = "Pistolet Calibre 50", ask = "~g~50000$", askX = true},
			}
		},
	
	    ["Accessoires | Protection"] = {
            b = {
                {name = "Chargeurs simples", ask = "~g~250$", askX = true},
                {name = "Gilet pare-balles leger", ask = "~g~5000$", askX = true},
                {name = "Gilet pare-balles lourd", ask = "~g~10000$", askX = true},
            }
        },
    }
}


local Shops = {
    { x = 22.05, y = -1107.17, z = 29.79},
    { x = -3172.25, y = 1087.94, z = 19.84},
    { x = 2567.64, y = 293.95, z = 108.73},
    { x = 1693.45, y = 3760.27, z = 33.71},
    { x = -330.36 , y = 6084.29, z = 31.45}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(Shops) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Shops[k].x, Shops[k].y, Shops[k].z)

            if dist <= 2.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec le ~r~vendeur")
				if IsControlJustPressed(1,51) then 
                    CreateMenu(MenuArmurie)
				end
            end
        end
    end
end)

local blips = { {title="Armurie", colour=1, id=567, x = 22.05, y = -1107.17, z = 29.79} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.6) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="Armurie", colour=1, id=567, x = -330.36 , y = 6084.29, z = 31.4} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.6) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="Armurie", colour=1, id=567, x = -3172.25, y = 1087.94, z = 19.84} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.6) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="Armurie", colour=1, id=567, x = 2567.64, y = 293.95, z = 108.73} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.6) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="Armurie", colour=1, id=567, x = 1693.45, y = 3760.27, z = 33.71} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.6) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
