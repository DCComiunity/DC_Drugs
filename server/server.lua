--- /$$$$$$$   /$$$$$$           /$$$$$$  /$$   /$$  /$$$$$$  /$$$$$$$ 
---| $$__  $$ /$$__  $$         /$$__  $$| $$  | $$ /$$__  $$| $$__  $$
---| $$  \ $$| $$  \__/        | $$  \__/| $$  | $$| $$  \ $$| $$  \ $$
---| $$  | $$| $$              |  $$$$$$ | $$$$$$$$| $$  | $$| $$$$$$$/
---| $$  | $$| $$               \____  $$| $$__  $$| $$  | $$| $$____/ 
---| $$  | $$| $$    $$         /$$  \ $$| $$  | $$| $$  | $$| $$      
---| $$$$$$$/|  $$$$$$/        |  $$$$$$/| $$  | $$|  $$$$$$/| $$      
---|_______/  \______/  /$$$$$$ \______/ |__/  |__/ \______/ |__/      
---                   |______/     
-- SCRIPTS Y BASES EN DC_Shop
-- MADE By : DARK CORONEL dev of DC_Shop



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



























print("^1----------------------------------------------------------------------")
print("^1[^1DC_drugs^1]...  | ^2Comprobando tu licencia... Por favor espere")
print("^5")
print("^1----------------------------------------------------------------------")
print("^1[^2DC_drugs^1]...  | ^2licencia activada")
print("^1###############################")

                                                                                         

print("########   ######         ######  ##     ##  #######  ########  ")
print("##     ## ##    ##       ##    ## ##     ## ##     ## ##     ## ")
print("##     ## ##             ##       ##     ## ##     ## ##     ## ")
print("##     ## ##               ######  ######### ##     ## ########  ")
print("##     ## ##                   ## ##     ## ##     ## ##        ")
print("##     ## ##    ##       ##    ## ##     ## ##     ## ##        ")
print("########   ######         ######  ##     ##  #######  ##        ")

                                                                                         
                                                                                         

print ("^2derechos de autor para : dark_coronel#8991 ") 
print ("^2creditos tambien a Famous RP | https://discord.gg/G99FBKUxWR")
print ("^3 para saber mas informacion de scripts unete a mi shop : https://discord.gg/pGCkAQedZc")
print("^1###############################")
print("DC_Shop : Tenemos disponicles los scripts DC_AmazonJob, DC_Blips, DC_PizzaJob, DC_Cardealer y el script de DC_Drugs que actualmente se encuentra en proceso")


        
                                                                                         
                                                                                         








