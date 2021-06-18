IsAnimal = false

Animal = {}
Animal.Land = {
	`a_c_boar`, `a_c_cat_01`, `a_c_chop`, `a_c_cow`, `a_c_coyote`, `a_c_deer`, `a_c_hen`, `a_c_husky`, `a_c_mtlion`, `a_c_pig`,
	`a_c_poodle`, `a_c_pug`, `a_c_rat`, `a_c_retriever`, `a_c_rottweiler`, `a_c_shepherd`, `a_c_westy`
}

Animal.Sky = {
	`a_c_chickenhawk`, `a_c_cormorant`, `a_c_crow`, `a_c_pigeon`, `a_c_seagull`
}

Animal.Water = {
	`a_c_dolphin`, `a_c_fish`, `a_c_humpback`, `a_c_killerwhale`, `a_c_sharkhammer`, `a_c_sharktiger`, `a_c_stingray`
}

animal = function() return IsAnimal end
exports('animal', animal)

Citizen.CreateThread(function()
	while true do
		local animal = false
		ped = PlayerPedId()
		player = PlayerId()
		local model = GetEntityModel(ped)
		for i=1, #Animal.Land do
			if model == Animal.Land[i] then
				animal = true
				if IsAnimal == false then AnimalLoop() end
				IsAnimal = {type = 'land', hash = model}
				break
			end
		end
		for i=1, #Animal.Sky do
			if model == Animal.Sky[i] then
				animal = true
				if IsAnimal == false then AnimalLoop() end
				IsAnimal = {type = 'sky', hash = model}
				break
			end
		end
		for i=1, #Animal.Water do
			if model == Animal.Water[i] then
				animal = true
				if IsAnimal == false then AnimalLoop() end
				IsAnimal = {type = 'water', hash = model}
				break
			end
		end
		if not animal then IsAnimal = false end
		Citizen.Wait(10000)
	end
end)

AnimalLoop = function()
	Citizen.CreateThread(function()
		SetEntityMaxHealth(ped, 1000)
		SetEntityHealth(ped, 1000)
		while IsAnimal do
			Citizen.Wait(5)
			if type(IsAnimal) == 'table' and IsAnimal.type == 'land' then
				SetPedMoveRateOverride(ped, 1.2)
				SetPlayerSprint(player, true)
				if not IsAnimalVocalizationPlaying(ped) then
					if IsAnimal.hash == `a_c_cat_01` then
						if IsControlPressed(0, 117) then PlayAnimalVocalization(ped, 1, '?') end			-- numpad 7
						if IsControlPressed(0, 118) then PlayAnimalVocalization(ped, 1, '?') end		-- numpad 9
					else
						if IsControlPressed(0, 117) then PlayAnimalVocalization(ped, 1, 'bark') end			-- numpad 7
						if IsControlPressed(0, 118) then PlayAnimalVocalization(ped, 1, 'SNARL') end		-- numpad 9
						if IsControlPressed(0, 127) then PlayAnimalVocalization(ped, 1, 'sniff') end		-- numpad 8
						if IsControlPressed(0, 124) then PlayAnimalVocalization(ped, 1, 'whine') end	-- numpad 4
						if IsControlPressed(0, 126) then PlayAnimalVocalization(ped, 1, 'GROWL') end		-- numpad 5
						if IsControlPressed(0, 125) then PlayAnimalVocalization(ped, 1, 'BARK_SEQ') end		-- numpad 6
					end
				end
			end
		end
	end)
end
