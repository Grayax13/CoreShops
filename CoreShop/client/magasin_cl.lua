ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	Citizen.Wait(0)
    end
end)

local MenuArmurie = {

    Base = { Title = "Magasin", HeaderColor = {32, 205, 20} },
    Data = { currentMenu = "Magasin" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
		    if btn.name == "Nourritures" then
			    OpenMenu("Nourritures")
            elseif btn.name == "Eau" then
                    TriggerServerEvent('marseille:achat', 2, "water", "Eau")
            elseif btn.name == "Paquet de chips" then 
                    TriggerServerEvent('marseille:achat', 4, "bolchips", "Paquet de chips")
			elseif btn.name == "Paquet de noix de cajou" then 
                    TriggerServerEvent('marseille:achat', 2, "bolnoixcajou", "Paquet de noix de cajou")
			elseif btn.name == "Paquet de pistaches" then 
                    TriggerServerEvent('marseille:achat', 6, "bolpistache", "Paquet de pistaches")
			elseif btn.name == "Ice Tea" then 
                    TriggerServerEvent('marseille:achat', 2, "icetea", "Ice Tea")
			elseif btn.name == "Jus de fruits" then 
                    TriggerServerEvent('marseille:achat', 2, "jusfruit", "Jus de fruits")
		    elseif btn.name == "Limonade" then 
                    TriggerServerEvent('marseille:achat', 3, "limonade", "Limonade")
			elseif btn.name == "Mojito" then 
                    TriggerServerEvent('marseille:achat', 2, "mojito", "Mojito")
			elseif btn.name == "Hamburger" then 
                    TriggerServerEvent('marseille:achat', 2, "bread", "Hamburger")
			elseif btn.name == "Saucisson" then 
                    TriggerServerEvent('marseille:achat', 3, "saucisson", "Saucisson")
			elseif btn.name == "Soda" then 
                    TriggerServerEvent('marseille:achat', 1, "soda", "Soda")
			elseif btn.name == "Vodka" then 
                    TriggerServerEvent('marseille:achat', 7, "vodka", "Vodka")
			elseif btn.name == "Vodka RedBull" then 
                    TriggerServerEvent('marseille:achat', 10, "vodkaenergy", "Vodka RedBull")
			elseif btn.name == "RedBull" then 
                    TriggerServerEvent('marseille:achat', 3, "energy", "RedBull")
			elseif btn.name == "Multimédia" then 
			       OpenMenu("Multimédia")
		    elseif btn.name == "Pistolet" then
			       TriggerServerEvent('marseille:achat', 40000, "weapon_pistol", "Pistolet")
		    elseif btn.name == "Téléphone" then
			       TriggerServerEvent('marseille:achat', 400, "tel", "Téléphone")
		    elseif btn.name == "Forfait Mobile" then
			       TriggerServerEvent('marseille:achat', 20, "sim", "Forfait Mobile")
		    elseif btn.name == "Accessoires automobile" then
			       OpenMenu ("Accessoires automobile")
		    elseif btn.name == "Chargeurs simples" then
			       TriggerServerEvent('marseille:achat', 250, "clip", "Chargeurs simples")
		    elseif btn.name == "Kit carosserie" then
			       TriggerServerEvent('marseille:achat', 15000, "carokit", "Kit carosserie")
		    elseif btn.name == "Outils carosserie" then 
			       TriggerServerEvent('marseille:achat', 10000, "carotool", "Outils carosserie")
     	    elseif btn.name == "Kit réparation" then 
			       TriggerServerEvent('marseille:achat', 20000, "fixkit", "Kit réparation")
			elseif btn.name == "Outils réparation" then 
			       TriggerServerEvent('marseille:achat', 15000, "fixtool", "Outils réparation")
              end
        end,
    },

    Menu = {
	    
		["Magasin"] = {
			b = {
				{name = "Nourritures", ask = "→→→", askX = true},
				{name = "~g~-----------------------------------------------------------------------", ask = "", askX = true},
				{name = "Multimédia", ask = "→→→", askX = true},
				{name = "~g~-----------------------------------------------------------------------", ask = "", askX = true},
				{name = "Accessoires automobile", ask = "→→→", askX = true},
				{name = "~g~-----------------------------------------------------------------------", ask = "", askX = true},
				{name = "~g~Information Pole Emploi", ask = "", askX = true, Description = "~g~Ce magasin recrute pour plus d'information contater le service pole emploi sur le site Infinity" },
				
			}
		},
		["Nourritures"] = {
			b = {
                {name = "Eau", ask = "~g~1$", askX = true},
				{name = "Paquet de chips", ask = "~g~4$", askX = true},
				{name = "Paquet de noix de cajou", ask = "~g~2$", askX = true},
				{name = "Paquet de pistaches", ask = "~g~6$", askX = true},
				{name = "Ice Tea", ask = "~g~2$", askX = true},
				{name = "Jus de fruits", ask = "~g~2$", askX = true},
				{name = "Limonade", ask = "~g~3$", askX = true},
				{name = "Mojito", ask = "~g~2$", askX = true},
				{name = "Hamburger", ask = "~g~1$", askX = true},
                {name = "Saucisson", ask = "~g~3$", askX = true},
                {name = "Soda", ask = "~g~1$", askX = true},
				{name = "Vodka", ask = "~g~7$", askX = true},
				{name = "Vodka RedBull", ask = "~g~10$", askX = true},
                {name = "RedBull", ask = "~g~3$", askX = true},
			}
		},
		["Multimédia"] = {
			b = {
				{name = "Téléphone", ask = "~g~400$", askX = true},
				{name = "Forfait Mobile", ask = "~g~20$", askX = true},
			}
		},
	
	    ["Accessoires automobile"] = {
            b = {
                {name = "Kit carosserie", ask = "~g~15000$", askX = true},
				{name = "Outils carosserie", ask = "~g~10000$", askX = true},
				{name = "Kit réparation", ask = "~g~20000$", askX = true},
				{name = "Outils réparation", ask = "~g~15000$", askX = true},
            }
        },
    }
}


local Shops = {
    {x = 25.82, y = -1345.49, z = 29.5},
    {x = 373.875,   y = 325.896,  z = 102.66},
	{x = 2557.458,  y = 382.282,  z = 107.722}, 
	{x = -3038.939, y = 585.954,  z = 6.97},
	{x = -3241.927, y = 1001.462, z = 11.850}, 
	{x = 547.431,   y = 2671.710, z = 41.176}, 
	{x = 1961.464,  y = 3740.672, z = 31.363}, 
	{x = 2678.916,  y = 3280.671, z = 54.261}, 
    {x = 1729.216,  y = 6414.131, z = 34.057}, 
    {x = 1135.808,  y = -982.281,  z = 45.45}, 
	{x = -1222.93, y = -906.99,  z = 11.35}, 
	{x = -1487.553, y = -379.107,  z = 39.163}, 
	{x = -2968.243, y = 390.910,   z = 14.054}, 
	{x = 1166.024,  y = 2708.930,  z = 37.167}, 
	{x = 1392.562,  y = 3604.684,  z = 33.995}, 
	{x = -1393.409, y = -606.624,  z = 29.319}, 
    {x = -48.519,   y = -1757.514, z = 28.47}, 
	{x = 1163.373,  y = -323.801,  z = 68.27}, 
	{x = -707.67,  y = -914.22,  z = 18.26}, 
	{x = -1820.523, y = 792.518,   z = 137.20},
	{x = 1698.388,  y = 4924.404,  z = 41.083}
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

local blips = { {title="24/7", colour=2, id=52, x = 25.82, y = -1345.49, z = 29.5} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 373.875,   y = 325.896,  z = 102.66} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 2557.458,  y = 382.282,  z = 107.722} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -3038.939, y = 585.954,  z = 6.97} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -3241.927, y = 1001.462, z = 11.850} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 547.431,   y = 2671.710, z = 41.176} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1961.464,  y = 3740.672, z = 31.363} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 2678.916,  y = 3280.671, z = 54.261} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1729.216,  y = 6414.131, z = 34.057} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1135.808,  y = -982.281,  z = 45.45} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -1222.93, y = -906.99,  z = 11.35} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -1487.553, y = -379.107,  z = 39.163} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -2968.243, y = 390.910,   z = 14.054} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1166.024,  y = 2708.930,  z = 37.167} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1392.562,  y = 3604.684,  z = 33.995} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -1393.409, y = -606.624,  z = 29.319} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -48.519,   y = -1757.514, z = 28.47} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1163.373,  y = -323.801,  z = 68.27} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -707.67,  y = -914.22,  z = 18.26} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = -1820.523, y = 792.518,   z = 137.20} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 
local blips = { {title="24/7", colour=2, id=52, x = 1698.388,  y = 4924.404,  z = 41.083} } Citizen.CreateThread(function() for _, info in pairs(blips) do info.blip = AddBlipForCoord(info.x, info.y, info.z) SetBlipSprite(info.blip, info.id) SetBlipDisplay(info.blip, 4) SetBlipScale(info.blip, 0.65) SetBlipColour(info.blip, info.colour) SetBlipAsShortRange(info.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(info.title) EndTextCommandSetBlipName(info.blip) end end) 

