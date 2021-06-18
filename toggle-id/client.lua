local playerNamesDist = 15
local displayIDHeight = 1.0

local curPlayer = nil


function DrawText3D(x,y,z, text) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
		World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 20) then
            if PlayerPedId() ~= curPlayer then
                curPlayer = PlayerPedId()
            end
            for _, v in ipairs(GetActivePlayers()) do
                local ped = GetPlayerPed(v)
                if (NetworkIsPlayerActive(v) and ped ~= curPlayer) then
                    RemoveMpGamerTag(v)
                    local coords = GetEntityCoords(ped)
                    local dist = #(GetEntityCoords(curPlayer) - coords)
                    distance = math.floor(dist)

                    if (distance < playerNamesDist) then
                        DrawText3D(coords.x, coords.y, coords.z + displayIDHeight, GetPlayerServerId(v))
                    end
                end
            end
        end
    end
end)
