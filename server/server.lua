--- /$$$$$$$   /$$$$$$           /$$$$$$  /$$   /$$  /$$$$$$  /$$$$$$$ 
---| $$__  $$ /$$__  $$         /$$__  $$| $$  | $$ /$$__  $$| $$__  $$
---| $$  \ $$| $$  \__/        | $$  \__/| $$  | $$| $$  \ $$| $$  \ $$
---| $$  | $$| $$              |  $$$$$$ | $$$$$$$$| $$  | $$| $$$$$$$/
---| $$  | $$| $$               \____  $$| $$__  $$| $$  | $$| $$____/ 
---| $$  | $$| $$    $$         /$$  \ $$| $$  | $$| $$  | $$| $$      
---| $$$$$$$/|  $$$$$$/        |  $$$$$$/| $$  | $$|  $$$$$$/| $$      
---|_______/  \______/  /$$$$$$ \______/ |__/  |__/ \______/ |__/      
---                   |______/     



ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)





RegisterServerEvent("Give:Fardo")
AddEventHandler("Give:Fardo", function(cantidad)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem("fardo", 1)
    xPlayer.removeInventoryItem("bolsah", 1)
    xPlayer.removeInventoryItem("cannabis", 5)

end)
RegisterServerEvent("Give:Cannabis")
AddEventHandler("Give:Cannabis", function(cantidad)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem("cannabis", math.random( 4, 6 ))
end)


ESX.RegisterServerCallback("item:bolsa", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item = xPlayer.getInventoryItem("bolsah").count

    cb(item)
end)

ESX.RegisterServerCallback("item:cogollos", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local item2 = xPlayer.getInventoryItem("cannabis").count


    cb(item2)
end)
