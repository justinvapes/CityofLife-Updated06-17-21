
local carry = {
	InProgress = false,
	targetSrc = -1,
	type = "",
	personCarrying = {
		animDict = "missfinale_c2mcs_1",
		anim = "fin_c2_mcs_1_camman",
		flag = 49,
	},
	personCarried = {
		animDict = "nm",
		anim = "firemans_carry",
		attachX = 0.27,
		attachY = 0.15,
		attachZ = 0.63,
		flag = 33,
	}
}

local function drawNativeNotification(text)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local function GetClosestPlayer(radius)
    local players = GetActivePlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    for _,playerId in ipairs(players) do
        local targetPed = GetPlayerPed(playerId)
        if targetPed ~= playerPed then
            local targetCoords = GetEntityCoords(targetPed)
            local distance = #(targetCoords-playerCoords)
            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = playerId
                closestDistance = distance
            end
        end
    end
	if closestDistance ~= -1 and closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

local function ensureAnimDict(animDict)
    if not HasAnimDictLoaded(animDict) then
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Wait(0)
        end        
    end
    return animDict
end

RegisterCommand("carry",function(source, args)
	if not carry.InProgress then
		if not IsPedInAnyVehicle(PlayerPedId(), true) then
			local closestPlayer = GetClosestPlayer(3)
			if closestPlayer then
				local targetSrc = GetPlayerServerId(closestPlayer)
				if targetSrc ~= -1 then
					carry.InProgress = true
					carry.targetSrc = targetSrc
					TriggerServerEvent("CarryPeople:sync",targetSrc)
					ensureAnimDict(carry.personCarrying.animDict)
					carry.type = "carrying"
				else
					drawNativeNotification("~r~No one nearby to carry!")
				end
			else
				drawNativeNotification("~r~No one nearby to carry!")
			end
		end
	else
		carry.InProgress = false
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(PlayerPedId(), true, false)
		TriggerServerEvent("CarryPeople:stop",carry.targetSrc)
		carry.targetSrc = 0
	end
end,false)

RegisterNetEvent("CarryPeople:syncTarget")
AddEventHandler("CarryPeople:syncTarget", function(targetSrc)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(targetSrc))
	TaskLeaveVehicle(PlayerPedId(), GetVehiclePedIsUsing(PlayerPedId()), 16)
	Citizen.Wait(5)
	carry.InProgress = true
	ensureAnimDict(carry.personCarried.animDict)
	AttachEntityToEntity(PlayerPedId(), targetPed, 0, carry.personCarried.attachX, carry.personCarried.attachY, carry.personCarried.attachZ, 0.5, 0.5, 180, false, false, false, false, 2, false)
	carry.type = "beingcarried"
end)

RegisterNetEvent("CarryPeople:cl_stop")
AddEventHandler("CarryPeople:cl_stop", function(vehicle)
	carry.InProgress = false
	ClearPedSecondaryTask(PlayerPedId())
	DetachEntity(PlayerPedId(), true, false)
	if vehicle then PlaceInVehicle(vehicle) end
end)

Citizen.CreateThread(function()
	while true do
		if carry.InProgress then
			if carry.type == "beingcarried" then
				if not IsEntityPlayingAnim(PlayerPedId(), carry.personCarried.animDict, carry.personCarried.anim, 3) then
					TaskPlayAnim(PlayerPedId(), carry.personCarried.animDict, carry.personCarried.anim, 8.0, -8.0, 100000, carry.personCarried.flag, 0, false, false, false)
				end
			elseif carry.type == "carrying" then
				if not IsEntityPlayingAnim(PlayerPedId(), carry.personCarrying.animDict, carry.personCarrying.anim, 3) then
					TaskPlayAnim(PlayerPedId(), carry.personCarrying.animDict, carry.personCarrying.anim, 8.0, -8.0, 100000, carry.personCarrying.flag, 0, false, false, false)
				end
				if IsPedInAnyVehicle(PlayerPedId(), true) then
					local vehicle = NetworkGetNetworkIdFromEntity(GetVehiclePedIsUsing(PlayerPedId()))
					carry.InProgress = false
					ClearPedSecondaryTask(PlayerPedId())
					DetachEntity(PlayerPedId(), true, false)
					TriggerServerEvent("CarryPeople:stop",carry.targetSrc, vehicle)
					carry.targetSrc = 0
				end
			end
		end
		Wait(0)
	end
end)

function PlaceInVehicle(vehicle)
	local playerPed = PlayerPedId()
	vehicle = NetworkGetEntityFromNetworkId(vehicle)

	local maxSeats, freeSeat = GetVehicleMaxNumberOfPassengers(vehicle)
	for i=maxSeats - 1, 0, -1 do
		if IsVehicleSeatFree(vehicle, i) then
			freeSeat = i
			break
		end
	end
	if freeSeat then
		TaskWarpPedIntoVehicle(playerPed, vehicle, freeSeat)
	end
end