Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.DrugDealerItems = {
	heroin = 2500,
	marijuana = 1500,
	meth = 2635,
	coke = 5000,
	lsd = 2178,
}

Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 'Hydrochloric Acid',
	sodium_hydroxide = 'Sodium Hydroxide',
	sulfuric_acid = 'Sulfuric Acid',
	lsa = 'LSA',
}

Config.ChemicalsLicenseEnabled = false --Will Enable or Disable the need for a Chemicals License.
Config.MoneyWashLicenseEnabled = false --Will Enable or Disable the need for a MoneyWash License.

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.Licenses = {
	moneywash = 75000,
	chemicalslisence = 100000,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.EnableMapsBlimps = false -- Enables the blimps on the map.

Config.CircleZones = {
	--Weed
	--WeedField = {coords = vector3(5207.64, -5203.88, 15.52), blimpcoords = vector3(5207.64, -5203.88, 15.52), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 0, enabled = true},
	--WeedProcessing = {coords = vector3(5064.4, -4590.36, 2.84), blimpcoords = vector3(5064.4, -4590.36, 2.848), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 0.0, enabled = true},
	
	--meth
	--MethProcessing = {coords = vector3(1007.27, -3197.93, -38.99), blimpcoords = vector3(1454.78, -1651.42, 66.99), name = _U('blip_methprocessing'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	--HydrochloricAcidFarm = {coords = vector3(2724.12, 1583.03, 24.5), blimpcoords = vector3(2724.12, 1583.03, 24.5), name = _U('blip_HydrochloricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	--SulfuricAcidFarm = {coords = vector3(3333.34, 5160.22, 18.31), blimpcoords = vector3(3333.34, 5160.22, 18.31), name = _U('blip_SulfuricAcidFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	--SodiumHydroxideFarm = {coords = vector3(3617.04, 3738.73, 28.69), blimpcoords = vector3(3617.04, 3738.73, 28.69), name = _U('blip_SodiumHydroxideFarm'), color = 5, sprite = 51, radius = 0.0, enabled = true},
	
	--Chemicals
	--ChemicalsField = {coords = vector3(3572.92, 3662.54, 33.9), blimpcoords = vector3(3572.92, 3662.54, 33.9), name = _U('blip_ChemicalsFarm'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	--ChemicalsConvertionMenu = {coords = vector3(-129.08, -1415.56, 31.3), blimpcoords = vector3(-129.08, -1415.56, 31.3), name = _U('blip_ChemicalsProcessing'), color = 3, sprite = 499, radius = 0.0, enabled = true},
	
	--Coke
	CokeField = {coords = vector3(-2321.35, 2689.95, 3.09), blimpcoords = vector3(-2321.35, 2689.95, 3.09), name = _U('blip_CokeFarm'), color = 4, sprite = 501, radius = 0.0, enabled = true},
	CokeProcessing = {coords = vector3(1225.57, 1876.75, 78.9), blimpcoords = vector3(1225.57, 1876.75, 78.9), name = _U('blip_Cokeprocessing'),color = 4, sprite = 501, radius = 0.0, enabled = true},
	
	--LSD
--	lsdProcessing = {coords = vector3(973.11, 2728.84, 39.5), blimpcoords = vector3(973.11, 2728.84, 39.5), name = _U('blip_lsdprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
--	thionylchlorideProcessing = {coords = vector3(-3252.43, 1077.136, 11.03), blimpcoords = vector3(-3252.43, 1077.136, 11.03), name = _U('blip_thionylchlorideprocessing'),color = 12, sprite = 364, radius = 0.0, enabled = true},
	
	--Heroin
	--HeroinField = {coords = vector3(769.56, 4183.28, 40.64), blimpcoords = vector3(16.34, 6875.94, 12.64), name = _U('blip_heroinfield'), color = 7, sprite = 497, radius = 0, enabled = true},
	--HeroinProcessing = {coords = vector3(1591.88, 3591.08, 38.76), blimpcoords = vector3(-62.15, 6391.40, 31.49), name = _U('blip_heroinprocessing'), color = 7, sprite = 497, radius = 0.0, enabled = true},

	--License
	--LicenseShop = {coords = vector3(707.17, -962.5, 30.4), blimpcoords = vector3(707.17, -962.5, 30.4), name = _U('blip_licenseshop'),color = 9, sprite = 498, radius = 0.0, enabled = true},

	--DrugDealer
	--DrugDealer = {coords = vector3(-1172.02, -1571.98, 4.66), blimpcoords = vector3(-1172.02, -1571.98, 4.66), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 0.0, enabled = true},
	
	--MoneyWash
	--MoneyWash = {coords = vector3(1962.82, 3820.61, 32.34), blimpcoords = vector3(1962.82, 3820.61, 32.34), name = _U('blip_moneywash'), color = 1, sprite = 500, radius = 0.0, enabled = true},
}
