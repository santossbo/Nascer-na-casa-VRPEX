RegisterNetEvent('rusher:Login:SpawnarEmCasa')
AddEventHandler('rusher:Login:SpawnarEmCasa', function(houseName)
    vRP.teleport(homes[houseName].enter[1], homes[houseName].enter[2], homes[houseName].enter[3])
end)

