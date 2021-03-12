ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-- Nouriture --

RegisterNetEvent('powx_tuto:Buyeau170')
AddEventHandler('powx_tuto:Buyeau170', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.additem('water', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ une bouteille ~r~d'eau~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('powx_tuto:Buypain171')
AddEventHandler('powx_tuto:Buypain171', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.additem('bread', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~pain~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)
