ESX = exports["es_extended"]:getSharedObject()


RegisterCommand("vanillaon", function(source)
  
    local xPlayer = ESX.GetPlayerFromId(source)
    local job = xPlayer.getJob().name
   
    if  job == 'vanilla' then
      
        TriggerClientEvent('nh:vanillaon',-1)
   
    end

end)


RegisterCommand("uwuon", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local job = xPlayer.getJob().name
   
    if  job == 'uwu' then
      
        TriggerClientEvent('nh:uwuon',-1)
   
    end


end)

RegisterCommand("beanon", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local job = xPlayer.getJob().name
   
    if  job == 'BeanMachine' then
      
        TriggerClientEvent('nh:Bean',-1)
   
    end

    

end)

RegisterCommand("mcon", function(source)

    local xPlayer = ESX.GetPlayerFromId(source)
    local job = xPlayer.getJob().name
   
    if  job == 'mcdonald' then
       
        TriggerClientEvent('nh:mcdonal',-1)
    
    end

    

end)