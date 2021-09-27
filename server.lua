RegisterServerEvent('rusher:Login:SpawnCasa')
AddEventHandler('rusher:Login:SpawnCasa',function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local myHomes = vRP.query("homes/get_homeuserid",{ user_id = parseInt(user_id) })
        if parseInt(#myHomes) >= 1 then
            for i = 1 ,#myHomes do 
                TriggerClientEvent('rusher:Login:SpawnarEmCasa', source, myHomes[i].home)
                break;
            end
        end
    end
end)
