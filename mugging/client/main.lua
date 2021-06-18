ESX                    = nil
lastrobbed             = 0
local robbing          = false
local currentrobbing   = false
local copsConnected    = 0

Citizen.CreateThread(function()
    while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3)
        if robbing then

        else  
        if IsPlayerFreeAiming(PlayerId()) then
            local aiming, targetPed = GetEntityPlayerIsFreeAimingAt(PlayerId())
                if IsPedArmed(PlayerPedId(), 7) and IsPedArmed(PlayerPedId(), 4) and ESX.PlayerData.job.name ~= 'police' and not IsPedAPlayer(targetPed) and IsPedHuman(targetPed) and not IsEntityAMissionEntity(targetPed) and copsConnected >= Config.CopsNeeded then
                    if aiming then
                    local playerPed = PlayerPedId()
                    local pCoords = GetEntityCoords(playerPed, true)
                    local tCoords = GetEntityCoords(targetPed, true)
                        if DoesEntityExist(targetPed) and IsEntityAPed(targetPed) and not IsPedDeadOrDying(targetPed) then
                            if GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, tCoords.x, tCoords.y, tCoords.z, true) <= 5.0 then
                                if IsPedInAnyVehicle(targetPed, true) then
                                    local localvehicle = GetVehiclePedIsIn(targetPed, false)
                                    if IsVehicleStopped(localvehicle) then
                                        TaskLeaveVehicle(targetPed, localvehicle, 1)
                                        ClearPedTasks(targetPed)
                                        Citizen.Wait(1000)
                                        if not robbing then
                                            robNpc(targetPed)
                                        end
                                    end
                                elseif not robbing then
                                    robNpc(targetPed)
                                end
                            end
                        end    
                    end
                end
            end
        end  
    end
end)
--//////////////////////////////////////////////--
--                 ROBBING NPC                  --
--//////////////////////////////////////////////--
function robNpc(targetPed)
    Citizen.CreateThread(function()
    local roblocalcoords = GetEntityCoords(targetPed)
    if not currentrobbing then 
    ESX.Game.Utils.DrawText3D(roblocalcoords, "[~g~E On Keyboard ~s~] to Mug", 0.25)
    elseif lasttargetPed == targetPed then
    ESX.Game.Utils.DrawText3D(roblocalcoords, "Already Mugged..", 0.25)
    else
        if not Config.progressBars then
        ESX.Game.Utils.DrawText3D(roblocalcoords, "Mugging..", 0.25)
        end
    end
    TaskHandsUp(targetPed, 5500, 0, 0, true)
    
        if IsControlJustReleased(0, 46) then
            local plyPos = GetEntityCoords(PlayerPedId(),  true)
            local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, plyPos.x, plyPos.y, plyPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
            local street1 = GetStreetNameFromHashKey(s1)
            local street2 = GetStreetNameFromHashKey(s2)
            local reportcoords = {
                x = plyPos.x,
                y = plyPos.y,
                z = plyPos.z - 1,
            }
            if not currentrobbing then
                if lasttargetPed == targetPed then
                    PlayAmbientSpeech1(targetPed, "GUN_BEG", "SPEECH_PARAMS_FORCE_NORMAL_CLEAR")
                    currentrobbing = true
                    TaskHandsUp(targetPed, 1000, 0, 0, true)
                    exports.pNotify:SendNotification({
                        text = ('Already Mugged this person.'), 
                        type = "success", 
                        timeout = 1000, 
                        layout = "centerRight", 
                        queue = "right",
                        killer = false,
                        animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
                    })
                    
                    TaskSmartFleePed(targetPed, PlayerPedId(), -1, -1, true, true)
                    Citizen.Wait(3000)
                    robbing = false
                    currentrobbing = false
                else
                    PlayAmbientSpeech1(targetPed, "GUN_BEG", "SPEECH_PARAMS_FORCE_NORMAL_CLEAR")
                    currentrobbing = true
                    TaskHandsUp(targetPed, Config.RobWaitTime * 1000, 0, 0, true)
                    if Config.progressBars then
					exports['progressBars']:startUI(8700, "Mugging in progress")
                    end
                    Citizen.Wait(Config.RobWaitTime * 1000)
                    if not IsPedFleeing(targetPed) then
                       if not IsPedDeadOrDying(targetPed) then
                            TriggerServerEvent("esx_mugging:giveMoney")
                            additems = math.random(1,100)
                                if additems <= Config.AddItemsPerctent then
                                        randomitemcount = math.random(1,Config.AddItemsMax)
                                    for i = randomitemcount,1,-1
                                    do
                                        local randomitempull = math.random(1, #Config.giveableItems)
                                        local itemName = Config.giveableItems[randomitempull]
                                        TriggerServerEvent('esx_mugging:giveItems', (itemName))
                                    end
                                end
                            randomact = math.random(1,10)
                            if randomact > 6 then
                                PlayAmbientSpeech1(targetPed, "GENERIC_INSULT_HIGH", "SPEECH_PARAMS_FORCE_NORMAL_CLEAR")
                            elseif randomact > 3 then
                                PlayAmbientSpeech1(targetPed, "GENERIC_FRIGHTENED_HIGH", "SPEECH_PARAMS_FORCE_NORMAL_CLEAR")
                            end
                            robbing = true
                            lastrobbed = math.random(1, 100)
                            if lastrobbed <= Config.PoliceNotify then
                                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                                    local sex = nil
                                    if skin.sex == 0 then
                                        sex = "Male" --male/change it to your language
                                    else
                                        sex = "Female" --female/change it to your language
                                    end
                                    TriggerServerEvent('esx_mugging:muggingPos', plyPos.x, plyPos.y, plyPos.z)

                                    if s2 == 0 then
                                        TriggerServerEvent('esx_mugging:muggingAlertS1', street1, sex, reportcoords)
                                    elseif s2 ~= 0 then
                                        TriggerServerEvent('esx_mugging:muggingAlert', street1, street2, sex, reportcoords)
                                    end
                                end)
                            end
                            
                            TaskSmartFleePed(targetPed, PlayerPedId(), -1, -1, true, true)
                            Citizen.Wait(3000)

                            lasttargetPed = targetPed
                            robbing = false
                            currentrobbing = false
                        else
                            if Config.AlwaysNotifyonDeath then
                                
                                exports.pNotify:SendNotification({
                                    text = ('Target died - Police will be notified'), 
                                    type = "success", 
                                    timeout = 1000, 
                                    layout = "centerRight", 
                                    queue = "right",
                                    killer = false,
                                    animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
                                })
                                ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                                    local sex = nil
                                    if skin.sex == 0 then
                                        sex = "Male" --male/change it to your language
                                    else
                                        sex = "Female" --female/change it to your language
                                    end
                                    TriggerServerEvent('esx_mugging:muggingPos', plyPos.x, plyPos.y, plyPos.z)
                                    TriggerServerEvent('esx_mugging:muggingAlertS2', street1, sex, reportcoords)

                                end)
                            end
                            robbing = false
                            currentrobbing = false
                        end
                    else
                        exports.pNotify:SendNotification({
                            text = ('Target ran away'), 
                            type = "success", 
                            timeout = 1000, 
                            layout = "centerRight", 
                            queue = "right",
                            killer = false,
                            animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}
                        })
                        
                        lastrobbed = math.random(1, 100)
                        if lastrobbed <= Config.PoliceNotify then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
                                local sex = nil
                                if skin.sex == 0 then
                                    sex = "Male" --male/change it to your language
                                else
                                    sex = "Female" --female/change it to your language
                                end
                                TriggerServerEvent('esx_mugging:muggingPos', plyPos.x, plyPos.y, plyPos.z)
                                if s2 == 0 then
                                    TriggerServerEvent('esx_mugging:muggingAlertS1', street1, sex, plyPos)
                                elseif s2 ~= 0 then
                                    TriggerServerEvent('esx_mugging:muggingAlert', street1, street2, sex, reportcoords)
                                end
                            end)
                        end
                        robbing = false
                        currentrobbing = false
                    end
                end
            end
        end
    end)
end
--//////////////////////////////////////////////--
--               CONNECTED COPS                 --
--//////////////////////////////////////////////--
RegisterNetEvent('esx_mugging:copsConnected')
AddEventHandler('esx_mugging:copsConnected', function(copsNumber)
    copsConnected = copsNumber
end)
--//////////////////////////////////////////////--
--                NOTIFICATION                  --
--//////////////////////////////////////////////--
RegisterNetEvent('muggingNotify')
AddEventHandler('muggingNotify', function(alert, xPlayer, coords)
        if  ESX.PlayerData.job.name == 'police' then  
		exports['t-notify']:SendTextAlert('info', 'This is an example message', 5500, true)
            if Config.GCPhone then 
                local playerPed = PlayerPedId()
                exports['t-notify']:SendTextAlert('info', 'This is an example message', 5500, true)
            else
                ESX.ShowAdvancedNotification('911 Emergency', 'Mugging', alert, 'CHAR_CALL911', 1)
				exports['t-notify']:SendTextAlert('info', 'This is an example message', 5500, true)
            end
        end
end)
--//////////////////////////////////////////////--
--                   LOCATION                   --
--//////////////////////////////////////////////--
RegisterNetEvent('esx_mugging:muggingPos')
AddEventHandler('esx_mugging:muggingPos', function(tx, ty, tz)
	if ESX.PlayerData.job.name == 'police' then
		local transT = 250
		local Blip = AddBlipForCoord(tx, ty, tz)
		SetBlipSprite(Blip,  10)
		SetBlipColour(Blip,  1)
		SetBlipAlpha(Blip,  transT)
		SetBlipAsShortRange(Blip,  false)
		while transT ~= 0 do
			Wait(100)
			transT = transT - 1
			SetBlipAlpha(Blip,  transT)
			if transT == 0 then
				SetBlipSprite(Blip,  2)
				return
			end
		end
	end
end)
