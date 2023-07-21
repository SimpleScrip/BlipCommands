.ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
end)

RegisterNetEvent('esx:onPlayerLogout',function()
	ESX.PlayerLoaded = false
	ESX.PlayerData = {}
end)

RegisterNetEvent('esx:setJob',function(job)
	ESX.PlayerData.job = job
end)

local datauwu = Config.BlipLocations.uwu
local uwuswitch = 0
local blipuwus = nil

RegisterNetEvent("nh:uwuon")
AddEventHandler("nh:uwuon", function()
    local autjob = ESX.PlayerData.job.name
        if uwuswitch == 0 then
            uwuswitch = 6
            blipuwus = AddBlipForCoord(datauwu.location)
            SetBlipSprite(blipuwus, datauwu.BlipID)
            SetBlipDisplay(blipuwus, uwuswitch)
            SetBlipScale(blipuwus, 1.0)
            SetBlipColour(blipuwus, datauwu.ColorBlip)
            SetBlipAsShortRange(blipuwus, true)
            BeginTextCommandSetBlipName("STRING")
             AddTextComponentString(datauwu.BlipName)
             EndTextCommandSetBlipName(blipuwus)
            
        elseif uwuswitch == 6 then 
         
            uwuswitch = 0
     
            Wait(100)
            RemoveBlip(blipuwus)
        end
end)

------------------- vanilla
local datavanilla = Config.BlipLocations.vanilla
local vanillaswitch = 0
local blipvanilla = nil

RegisterNetEvent("nh:vanillaon")
AddEventHandler("nh:vanillaon", function(autjob)
    local autjob = ESX.PlayerData.job.name

        if vanillaswitch == 0 then
            vanillaswitch = 6
            blipvanilla = AddBlipForCoord(datavanilla.location)
            SetBlipSprite(blipvanilla, datavanilla.BlipID)
            SetBlipDisplay(blipvanilla, vanillaswitch)
            SetBlipScale(blipvanilla, 1.0)
            SetBlipColour(blipvanilla, datavanilla.ColorBlip)
            SetBlipAsShortRange(blipvanilla, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(datavanilla.BlipName)
            EndTextCommandSetBlipName(blipvanilla)
            
        elseif vanillaswitch == 6 then 
         
            vanillaswitch = 0

            Wait(100)
            RemoveBlip(blipvanilla)
        end
end)



---- BeanMachine
local dataBean = Config.BlipLocations.BeanMachine
local Beanswitch = 0
local blipBean = nil
RegisterNetEvent("nh:Bean")
AddEventHandler("nh:Bean", function()

    local autjob = ESX.PlayerData.job.name
    
        if Beanswitch == 0 then
            Beanswitch = 6
            blipBean = AddBlipForCoord(dataBean.location)
            SetBlipSprite(blipBean, dataBean.BlipID)
            SetBlipDisplay(blipBean, Beanswitch)
            SetBlipScale(blipBean, 1.0)
            SetBlipColour(blipBean, dataBean.ColorBlip)
            SetBlipAsShortRange(blipBean, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(Config.BlipLocations.BeanMachine.BlipName)
            EndTextCommandSetBlipName()
        elseif Beanswitch == 6 then 
            Beanswitch = 0
            Wait(100)
            RemoveBlip(blipBean)
        end
end)


---- mcdonals
local datamcdonald = Config.BlipLocations.mcdonald
local mcdonaldswitch = 0
local blipmcdonald = nil


RegisterNetEvent("nh:mcdonal")
AddEventHandler("nh:mcdonal", function()

    local autjob = ESX.PlayerData.job.name
 
        if mcdonaldswitch == 0 then
            mcdonaldswitch = 6
            blipmcdonald = AddBlipForCoord(datamcdonald.location)
            SetBlipSprite(blipmcdonald, datamcdonald.BlipID)
            SetBlipDisplay(blipmcdonald, mcdonaldswitch)
            SetBlipScale(blipmcdonald, 1.0)
            SetBlipColour(blipmcdonald, datamcdonald.ColorBlip)
            SetBlipAsShortRange(blipmcdonald, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(datamcdonald.BlipName)
            EndTextCommandSetBlipName(blipmcdonald)
        elseif mcdonaldswitch == 6 then 
            mcdonaldswitch = 0
            Wait(100)
            RemoveBlip(blipmcdonald)
        end
end)