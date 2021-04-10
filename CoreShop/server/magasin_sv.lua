ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('marseille:achat')
AddEventHandler('marseille:achat', function(price, item, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= price then
	xPlayer.removeMoney(price)
    	xPlayer.addInventoryItem(item, 1)

         TriggerClientEvent('esx:showAdvancedNotification', source, "Fleeca Banque", "Paiement ~g~accepté", "Votre solde vas etre débité, Merci !", "CHAR_BANK_FLEECA", "Chat Box")
     else
          TriggerClientEvent('esx:showAdvancedNotification', source, "Fleeca Banque", "Paiement ~r~refusé", "Nous sommes désolés ~r~votre solde est insuffisant", "CHAR_BANK_FLEECA", "Chat Box")    end
end)