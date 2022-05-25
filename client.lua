local QBCore = exports['qb-core']:GetCoreObject()

-- Net Events
RegisterNetEvent('power-yoga:udøv:1', function()
    local plyPed = PlayerPedId()
    SetEntityCoords(plyPed, Config.YogaPlads1)
    FreezeEntityPosition(plyPed, true)
    QBCore.Functions.Progressbar('yoga1', 'Udøver yoga...', 23000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_yoga@male@base',
        anim = 'base_b',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)
        TriggerServerEvent('hud:server:RelieveStress', 100)
    end, function() -- Play When Cancel
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)

    end)
end)

RegisterNetEvent('power-yoga:udøv:2', function()
    local plyPed = PlayerPedId()
    SetEntityCoords(plyPed, Config.YogaPlads2)
    FreezeEntityPosition(plyPed, true)
    QBCore.Functions.Progressbar('yoga2', 'Udøver yoga...', 23000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_yoga@male@base',
        anim = 'base_b',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)
        TriggerServerEvent('hud:server:RelieveStress', 100)
    end, function() -- Play When Cancel
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)

    end)
end)

RegisterNetEvent('power-yoga:udøv:3', function()
    local plyPed = PlayerPedId()
    SetEntityCoords(plyPed, Config.YogaPlads3)
    FreezeEntityPosition(plyPed, true)
    QBCore.Functions.Progressbar('yoga3', 'Udøver yoga...', 23000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_yoga@male@base',
        anim = 'base_b',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)
        TriggerServerEvent('hud:server:RelieveStress', 100)
    end, function() -- Play When Cancel
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)

    end)
end)

RegisterNetEvent('power-yoga:udøv:4', function()
    local plyPed = PlayerPedId()
    SetEntityCoords(plyPed, Config.YogaPlads4)
    FreezeEntityPosition(plyPed, true)
    QBCore.Functions.Progressbar('yoga4', 'Udøver yoga...', 23000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@world_human_yoga@male@base',
        anim = 'base_b',
        flags = 16,
    }, {}, {}, function() -- Play When Done
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)
        TriggerServerEvent('hud:server:RelieveStress', 100)
    end, function() -- Play When Cancel
        local plyPed = PlayerPedId()
        FreezeEntityPosition(plyPed, false)

    end)
end)


-- Dev Commands
RegisterCommand('ud', function()
    local plyPed = PlayerPedId()
    FreezeEntityPosition(plyPed, false)
end)

RegisterCommand('stress', function()
    TriggerServerEvent('hud:server:GainStress', 50)
end)


-- Eye exports
exports['qb-target']:AddCircleZone("yoga1", Config.YogaPlads1, 0.5, {
	name = "yoga1",
	Config.debugPoly,
}, {
	options = {
		{
            type = "client",
            event = "power-yoga:udøv:1",
			icon = "fas fa-sign-in-alt",
			label = "Udøv Yoga",
		},
	},
	distance = 4.5
})

exports['qb-target']:AddCircleZone("yoga2", Config.YogaPlads2, 0.5, {
	name = "yoga2",
	Config.debugPoly,
}, {
	options = {
		{
            type = "client",
            event = "power-yoga:udøv:2",
			icon = "fas fa-sign-in-alt",
			label = "Udøv Yoga",
		},
	},
	distance = 4.5
})

exports['qb-target']:AddCircleZone("yoga3", Config.YogaPlads3, 0.5, {
	name = "yoga3",
	Config.debugPoly,
}, {
	options = {
		{
            type = "client",
            event = "power-yoga:udøv:3",
			icon = "fas fa-sign-in-alt",
			label = "Udøv Yoga",
		},
	},
	distance = 4.5
})

exports['qb-target']:AddCircleZone("yoga4", Config.YogaPlads4, 0.5, {
	name = "yoga4",
	Config.debugPoly,
}, {
	options = {
		{
            type = "client",
            event = "power-yoga:udøv:4",
			icon = "fas fa-sign-in-alt",
			label = "Udøv Yoga",
		},
	},
	distance = 4.5
})

-- BLip
if Config.TilladBlip then
    yoga = AddBlipForCoord(Config.BlipLokation)
    SetBlipSprite (yoga, 197)
    SetBlipDisplay(yoga, 4)
    SetBlipScale  (yoga, 0.7)
    SetBlipColour(yoga, 24)
    SetBlipAsShortRange(yoga, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('Yoga')
    EndTextCommandSetBlipName(yoga)
end