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
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()    
    while true do
        local _sleep = 1000
        local _char = PlayerPedId()
        local _charpos = GetEntityCoords(_char)
        if #(_charpos - Config.ProcesarMaria.Maria.coords ) < 4 then
            _sleep = 0
            Create3D(Config.ProcesarMaria.Maria.coords, Config.ProcesarMaria.Maria.Text)
            if IsControlJustPressed(0,38) then
                MenuProcesar()
            end
        end
        Citizen.Wait(_sleep)
    end
end)
local devolverCoche = false
local cogollos = false
local cogollos2 = false
local cogollos3 = false
local cogollos4 = false
local sinc = true
local conc = false
Citizen.CreateThread(function()
    while true do 
        local _sleep = 1000
        local _char = PlayerPedId()
        local _charpos = GetEntityCoords(_char)
        if #(_charpos -   Config.CogerCoche.coords) < 5 then
            _sleep = 0
            if sinc == true then
                Create3D(  Config.CogerCoche.coords, "~g~E~w~ | Para coger una camioneta")
                if IsControlJustPressed(0,38) then
                    SpawnVeicle("burrito", Config.CogerCoche.spawn)
                    SetNewWaypoint(Config.PMaria.p.coords)
                    conc = true
                    sinc = false
                    cogollos = true
                    exports['okokNotify']:Alert("INFORMACION", "Ves al punto y coge la marihuana", "3000", 'success')
                end
            else
                Create3D(Config.CogerCoche.coords, "~r~E~w~ | Para dejar la furgoneta")
                if IsControlJustPressed(0,38) then
                    exports['okokNotify']:Alert("INFORMACION", "Has dejado la furgoneta con exito", "3000", 'success')
                    ESX.Game.DeleteVehicle(GetVehiclePedIsIn(PlayerPedId()))
                    conc = false
                    sinc = true
                end
            end
        end 
        Citizen.Wait(_sleep)
    end
end)
Citizen.CreateThread(function()
    while true do
        local _sleep = 1000
        local _char = PlayerPedId()
        local _charpos = GetEntityCoords(_char)
        if cogollos == true then
            _sleep = 0
            if #(_charpos - Config.PMaria.p.coords) < 40 then
            Create3D(Config.PMaria.p.coords, "~g~E~w~ | Para coger cogollos")
                if IsControlJustPressed(0,38) then
                    TaskStartScenarioInPlace(_char, 'world_human_gardener_plant', 0, false)
                    exports['progressBars']:startUI(5000, "Quitando los cogollos de las ramas")
                    Citizen.Wait("5000")
                    ClearPedTasks(_char)
                    exports['okokNotify']:Alert("INFORMACION", "Has recogido una planta (1/4)", "3000", 'success')

                    TriggerServerEvent("Give:Cannabis")
                    cogollos = false cogollos2 = true
                end
            end
        end
        if cogollos2 == true then
            _sleep = 0
            if #(_charpos - Config.PMaria.s.coords) < 4 then
                Create3D(Config.PMaria.s.coords, "~g~E~w~ | Para coger cogollos")
                if IsControlJustPressed(0,38) then
                    TaskStartScenarioInPlace(_char, 'world_human_gardener_plant', 0, false)
                    exports['progressBars']:startUI(5000, "Quitando los cogollos de las ramas")
                    Citizen.Wait("5000")
                    ClearPedTasks(_char)
                    exports['okokNotify']:Alert("INFORMACION", "Has recogido una planta (2/4)", "3000", 'success')

                    TriggerServerEvent("Give:Cannabis")
                    cogollos2 = false cogollos3 = true
                    end
            end
        end
        if cogollos3 == true then
            _sleep = 0
            if #(_charpos - Config.PMaria.t.coords) < 4 then
                Create3D(Config.PMaria.t.coords, "~g~E~w~ | Para coger cogollos")
                if IsControlJustPressed(0,38) then
                    TaskStartScenarioInPlace(_char, 'world_human_gardener_plant', 0, false)
                    exports['progressBars']:startUI(5000, "Quitando los cogollos de las ramas")
                    Citizen.Wait("5000")
                    ClearPedTasks(_char)
                    TriggerServerEvent("Give:Cannabis")
                    exports['okokNotify']:Alert("INFORMACION", "Has recogido una planta (3/4)", "3000", 'success')

                    cogollos3 = false cogollos4 = true
                    end
            end
        end
        if cogollos4 == true then
            _sleep = 0
            if #(_charpos - Config.PMaria.c.coords) < 4 then
                Create3D(Config.PMaria.c.coords, "~g~E~w~ | Para coger cogollos")
                if IsControlJustPressed(0,38) then
                    TaskStartScenarioInPlace(_char, 'world_human_gardener_plant', 0, false)
                    exports['progressBars']:startUI(5000, "Quitando los cogollos de las ramas")
                    Citizen.Wait("5000")
                    ClearPedTasks(_char)
                    TriggerServerEvent("Give:Cannabis")
                    exports['okokNotify']:Alert("INFORMACION", "Has recogido todas las plantas (4/4)", "3000", 'success')

                    exports['okokNotify']:Alert("INFORMACION", "Ves al punto indicado en el GPS y deja la furgoneta", "3000", 'success')

                    cogollos4 = false devolverCoche = true
                    end
            end
        end
        Citizen.Wait(_sleep)
    end
end)
Citizen.CreateThread(function()
    while true do
        local _sleep = 1000
        local _char = PlayerPedId()
        local _charpos = GetEntityCoords(_char)
        if devolverCoche ==  true then
            _sleep = 0
            SetNewWaypoint(Config.CogerCoche.coords)
        end
    Citizen.Wait(_sleep)
    end
end)
