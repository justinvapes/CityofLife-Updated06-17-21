-- 0	vehicle has no storage
-- 1	vehicle storage in the hood
Config.VehicleStorage = {
	[`jester`]=1, 
	[`adder`]=1, 
	[`osiris`]=0, 
	[`pfister811`]=0, 
	[`penetrator`]=0, 
	[`autarch`]=0, 
	[`bullet`]=0, 
	[`cheetah`]=0, 
	[`cyclone`]=0, 
	[`voltic`]=0, 
	[`reaper`]=1, 
	[`entityxf`]=0, 
	[`t20`]=0, 
	[`taipan`]=0, 
	[`tezeract`]=0, 
	[`torero`]=1, 
	[`turismor`]=0, 
	[`fmj`]=0, 
	[`infernus `]=0, 
	[`italigtb`]=1, 
	[`italigtb2`]=1, 
	[`nero2`]=0, 
	[`vacca`]=1, 
	[`vagner`]=0, 
	[`visione`]=0, 
	[`prototipo`]=0, 
	[`zentorno`]=0
}


-- slots, maxWeight; default weight is 8000 per slot
Config.Gloveboxes = {	
	[0] = {11, 20000}, -- compact
	[1] = {11, 20000}, -- sedan
	[2] = {11, 20000}, -- suv
	[3] = {11, 20000}, -- coupe
	[4] = {11, 20000}, -- muscle
	[5] = {11, 20000}, -- sports classic
	[6] = {11, 20000}, -- sports
	[7] = {11, 10000}, -- super
	[8] = {5, 40000}, -- motorcycle
	[9] = {11, 30000}, -- offroad
	[10] = {11, 30000}, -- industrial
	[11] = {11, 30000}, -- utility
	[12] = {11, 20000}, -- van
	[14] = {31, 300000}, -- boat
	[15] = {31, 800000}, -- helicopter
	[16] = {51, 1500000}, -- plane
	[17] = {11, 20000}, -- service
	[18] = {11, 20000}, -- emergency
	[19] = {11, 20000}, -- military
	[20] = {11, 20000} -- commercial (trucks)
}

Config.Trunks = {
	[0] = {21, 50000}, -- compact
	[1] = {41, 300000}, -- sedan
	[2] = {51, 600000}, -- suv
	[3] = {31, 300000}, -- coupe
	[4] = {41, 200000}, -- muscle
	[5] = {31, 100000}, -- sports classic
	[6] = {31, 100000}, -- sports
	[7] = {21, 75000}, -- super
	[8] = {5,  10000},-- motorcycle
	[9] = {51, 500000}, -- offroad
	[10] = {51, 1000000}, -- industrial
	[11] = {41, 700000}, -- utility
	[12] = {61, 800000}, -- van
	--[14] -- boat
	--[15] -- helicopter
	--[16] -- plane
	[17] = {41, 400000}, -- service
	[18] = {41, 400000}, -- emergency
	[19] = {41, 600000}, -- military
	[20] = {61, 900000} -- commercial
}
