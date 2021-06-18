Config.General = {
	name = 'Shop',
	blip = {
		id = 52,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{
			name = 'burger',
			price = 15
		},
		{
			name = 'water',
			price = 7
		},
		{
			name = 'cola',
			price = 10
		},
		{
			name = 'cupcake',
			price = 10
		},
		{
			name = 'donutg',
			price = 10
		},
		{
			name = 'taco',
			price = 15
		},
		{
			name = 'sprunk',
			price = 10
		},		
	}
}

Config.Liquor = {
	name = 'Liquor Store',
	blip = {
		id = 93,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{
			name = 'water',
			price = 7
		},
		{
			name = 'cola',
			price = 10
		},
		{
			name = 'sprunk',
			price = 10
		},
		{
			name = 'vodka',
			price = 45
		},
		{
			name = 'beer',
			price = 15
		},
		{
			name = 'whisky',
			price = 50
		},
	}
}

Config.YouTool = {
	name = 'YouTool',
	blip = {
		id = 402,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{
			name = 'WEAPON_HAMMER',
			price = 1500,
		},
		{
			name = 'WEAPON_BAT',
			price = 1000,
		},
		{
			name = 'WEAPON_CROWBAR',
			price = 2500,
		},
		{
			name = 'WEAPON_HATCHET',
			price = 1750,
		},
		{
			name = 'WEAPON_FLASHLIGHT',
			price = 900,
		},
		{
			name = 'radio',
			price = 50,
		},
		{
			name = 'wateringcan',
			price = 10,
		},
		{
			name = 'lowgradefert',
			price = 10,
		},
		{
			name = 'plantpot',
			price = 10,
		},
		{
			name = 'lithium',
			price = 900,
		},
	}
}

Config.Ammunation = {
	name = 'Ammunation',
	blip = {
		id = 110,
		colour = 69,
		scale = 0.6
	}, inventory = {
		{ name = 'ammo-9', price = 5, },
		{ name = 'WEAPON_KNIFE', price = 200 },
		{ name = 'WEAPON_BAT', price = 100 },
		{ name = 'WEAPON_PISTOL', price = 5000, metadata = { registered = true }, license = 'weapon' },
	}
}

Config.PoliceArmoury = {
	name = 'Police Armoury',
	blip = {
		id = 110,
		colour = 38,
		scale = 0.6
	}, inventory = {
		{
			name = 'bandage',
			price = 20,
		},
		{
			name = 'armour',
			price = 2000,
		},
		{
			name = 'radio',
			price = 100,
		},
		{
			name = 'ammo-9',
			price = 5,
			grade = 1
		},
		{
			name = 'ammo-shotgun',
			price = 20,
			grade = 1
		},
		{
			name = 'ammo-rifle',
			price = 50,
			grade = 1
		},
		{
			name = 'WEAPON_STUNGUN',
			price = 2000,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
		{
			name = 'WEAPON_PUMPSHOTGUN_MK2',
			price = 50000,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
		{
			name = 'WEAPON_COMBATPISTOL',
			price = 10000,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
		{
			name = 'WEAPON_CARBINERIFLE',
			price = 75000,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
		{
			name = 'WEAPON_FLASHLIGHT',
			price = 500,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
		{
			name = 'WEAPON_NIGHTSTICK',
			price = 500,
			metadata = {
				serial = 'POL',
				registered = true
			},
		},
	}
}

Config.SecurityArmoury = {
	name = 'Security Armoury',
	blip = {
		id = 110,
		colour = 43,
		scale = 0.6
	}, inventory = {
		{
			name = 'bandage',
			price = 10,
		},
		{
			name = 'radio',
			price = 100,
		},
		{
			name = 'armour',
			price = 500,
			grade = 1
		},
		{
			name = 'WEAPON_NIGHTSTICK',
			price = 1000,
		},
		{ name = 'ammo-9', price = 5, },
		{ name = 'ammo-musket', price = 5, },
		{ name = 'ammo-shotgun', price = 10, },
		{
			name = 'WEAPON_PISTOL',
			price = 5000,
			metadata = {
				serial = 'SEC',
				components = { 'flashlight', },
				weapontint = 1,
				registered = true
			},
			license = 'weapon'
		},
		{
			name = 'WEAPON_MUSKET',
			price = 5000,
			grade = 1,
			metadata = {
				serial = 'SEC',
				registered = true
			},
			license = 'weapon'
		},
	}
}

Config.Medicine = {
	name = 'Medicine Cabinet',
	blip = {
		id = 403,
		colour = 41,
		scale = 0.6
	}, inventory = {
		{
			name = 'radio',
			price = 100
		},
		{
			name = 'medikit',
			price = 20,
		},
		{
			name = 'bandages',
			price = 20,
		},
		{
			name = 'WEAPON_STUNGUN',
			price = 2000,
			grade = 6,
			metadata = {
				serial = 'EMS',
			},
		},
		{
			name = 'vicodin',
			price = 150,
			grade = 6,
			metadata = {
				serial = 'EMS',
			},
		},
		{
			name = 'realcalm',
			price = 150,
			grade = 6,
			metadata = {
				serial = 'EMS',
			},
		},
		{
			name = 'WEAPON_SWITCHBLADE',
			price = 1000,
			grade = 6
		},
		{
			name = 'stretcher',
			price = 1000,
			grade = 6
		},
	}
}

Config.BlackMarketBank = {
	name = 'Black Market (Bank)',
	inventory = {
		{
			name = 'utk_thermalcharge',
			price = 50000
		},
		{
			name = 'utk_laptop',
			price = 50000,
		},
		{
			name = 'secure_card',
			price = 50000,
		},
		{
			name = 'methlab',
			price = 12000,
		},
	}
}

Config.BlackMarketGuns = {
	name = 'Black Market (Arms)',
	inventory = {
		{
			name = 'WEAPON_DAGGER',
			price = 5000,
			metadata = {
				registered = false
			},
		},
		--[[{
			name = 'WEAPON_CERAMICPISTOL',
			price = 50000,
			metadata = {
				registered = false
			},
		},]]
		--[[{
			name = 'WEAPON_COMBATPISTOL',
			price = 40000,
			metadata = {
				registered = false
			},
		},]]
		{
			name = 'WEAPON_PISTOL50',
			price = 300000
		},
		--[[{
			name = 'at_clip_extended_pistol',
			price = 35000,
		},
		{
			name = 'at_flashlight_pistol',
			price = 8000,
		},]]
		{
			name = 'at_suppressor_pistol',
			price = 50000,
		},
		{
			name = 'ammo-45',
			price = 250
		},
		{
			name = 'ammo-rifle',
			price = 1000
		},
		{
			name = 'ammo-50',
			price = 3000
		},
		--[[{
			name = 'ammo-rifle2',
			price = 1000
		},]]
	}
}

Config.Locksmith = {
	name = 'Locksmiths',
	blip = {
		id = 186,
		colour = 69,
		scale = 1.0
	}, inventory = {
		{ name = 'lockpick', price = 640 },
	}
}

Config.GardenStore  = {
	name = 'Green Fingers',
	blip = {
		id = 541,
		colour = 52,
		scale = 0.6
	}, inventory = {
		{ name = 'purifiedwater', price = 34 },
		{ name = 'highgradefert', price = 34 },
		{ name = 'plantpot', price = 15 },
	}
}

Config.FlyWheel = {
	name = 'FlyWheel',
	blip = {
		id = 402,
		colour = 40,
		scale = 1.0
	}, inventory = {
		{ name = 'repairkit', price = 1000 },
		{ name = 'tyrekit', price = 500 },
		{ name = 'radio', price = 50 },
		{ name = 'WEAPON_PETROLCAN', price = 100 },
		{ name = 'acetone', price = 360 },
		{ name = 'carcleankit', price = 60},
	}
}

Config.SmokeonWater = {
	name = 'Smoke on the Water',
	blip = {
		id = 496,
		colour = 52,
		scale = 0.6
	}, inventory = {
		{ name = 'drugscales', price = 20000 },
		{ name = 'rollingpaper', price = 5 },
		{ name = 'dopebag', price = 5 },
		{ name = 'joint', price = 69 },
		{ name = 'highgradefemaleseed', price = 5000 },
		{ name = 'highgrademaleseed', price = 15000 },
	}
}

Config.TheSeaWord = {
	name = 'The Sea Word',
	blip = {
		id = 308,
		colour = 46,
		scale = 0.6
	}, inventory = {
		{ name = 'oxygen_masklarge', price = 1000 },
		{ name = 'oxygen_mask', price = 750 },
		{ name = 'WEAPON_FLARE', price = 100 },
		{ name = 'radio', price = 50 },
	}
}

Config.BaitTackle = {
	name = 'Bait Tackle',
	blip = {
		id = 356,
		colour = 20,
		scale = 0.6
	}, inventory = {
		{ name = 'ecola', price = 10 },
		{ name = 'sandwich', price = 10 },
	}
}

Config.PhoneStore = {
	name = 'Phone of Life',
	blip = {
		id = 52,
		colour = 27,
		scale = 0.6
	}, inventory = {
		{ name = 'phone', price = 500 },
	}
}

Config.WilliesWholesalers = {
	name = 'Willies Wholesalers',
	blip = {
		id = 52,
		colour = 61,
		scale = 0.6
	}, inventory = {
		{ name = 'ecola', price = 3 },
		{ name = 'sandwich', price = 3 },
		{ name = 'beer', price = 7 },
		{ name = 'bread', price = 2 },
		{ name = 'chocolate', price = 4 },
		{ name = 'cupcake', price = 5 },
		{ name = 'donut', price = 4 },
		{ name = 'donutg', price = 5 },
		{ name = 'donuts', price = 6 },
		{ name = 'hotdog', price = 7 },
		{ name = 'icetea', price = 7 },
		{ name = 'lemonade', price = 3 },
		{ name = 'sprunk', price = 3 },
		{ name = 'tacos', price = 8 },
		{ name = 'water', price = 3 },
	}
}

Config.Shops = {
	{ type = Config.Ammunation, coords = vector3(-662.180, -934.961, 21.829) },
	{ type = Config.Ammunation, coords = vector3(810.25, -2157.60, 29.62) },
	{ type = Config.Ammunation, coords = vector3(1693.44, 3760.16, 34.71) },
	{ type = Config.Ammunation, coords = vector3(-330.24, 6083.88, 31.45) },
	{ type = Config.Ammunation, coords = vector3(252.63, -50.00, 69.94) },
	{ type = Config.Ammunation, coords = vector3(22.56, -1109.89, 29.80) },
	{ type = Config.Ammunation, coords = vector3(2567.69, 294.38, 108.73) },
	{ type = Config.Ammunation, coords = vector3(-1117.58, 2698.61, 18.55) },
	{ type = Config.Ammunation, coords = vector3(842.44, -1033.42, 28.19) },

	{ type = Config.Liquor, coords = vector3(336.12, -916.72, 29.24), name = 'CYBER Liquor' },
	{ type = Config.Liquor, coords = vector3(-1222.915, -906.983,  12.326), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1487.553, -379.107,  40.163), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-2968.243, 390.910, 15.043), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1166.024, 2708.930, 38.157), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1392.562, 3604.684, 34.980), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1393.409, -606.624, 30.319), name = 'Rob\'s Liquor' },

	{ type = Config.YouTool, coords = vector3(2748.0, 3473.0, 55.67) },
	{ type = Config.YouTool, coords = vector3(342.99, -1298.26, 32.51) },

	{ coords = vector3(-531.14, -1221.33, 18.48), name = 'Xero Gas'},
	{ coords = vector3(2557.458,  382.282, 108.622), name = '24/7'},
	{ coords = vector3(-3038.939, 585.954, 7.908), name = '24/7'},
	{ coords = vector3(-3241.927, 1001.462, 12.830), name = '24/7'},
	{ coords = vector3(547.431, 2671.710, 42.156), name = '24/7'},
	{ coords = vector3(1961.464, 3740.672, 32.343), name = '24/7'},
	{ coords = vector3(2678.916, 3280.671, 55.241), name = '24/7'},
	{ coords = vector3(1729.216, 6414.131, 35.037), name = '24/7'},
	{ coords = vector3(-48.519, -1757.514, 29.421), name = 'LTD'},
	{ coords = vector3(1163.373, -323.801, 69.205), name = 'LTD'},
	{ coords = vector3(-707.501, -914.260, 19.215), name = 'LTD'},
	{ coords = vector3(-1820.523, 792.518, 138.118), name = 'LTD'},
	{ coords = vector3(1698.388, 4924.404, 42.063), name = 'LTD'},
	{ coords = vector3(25.723, -1346.966, 29.497), name = '24/7'},
	{ coords = vector3(373.875, 325.896, 103.566), name = '24/7'},
	{ coords = vector3(-2544.092, 2316.184, 33.2), name = 'RON'},

	{ type = Config.PoliceArmoury, job = 'police', coords = vector3(487.235, -997.108, 30.69) },
	{ type = Config.SecurityArmoury, job = 'security', coords = vector3(-592.978, -1620.389, 33.01) },
	{ type = Config.Medicine, job = 'ambulance', coords = vector3(306.3687, -601.5139, 43.28406) },

	{ type = Config.BlackMarketBank, coords = vector3(2525.5, 2578.3, 37.9), currency = 'black_money' }, 
	{ type = Config.BlackMarketGuns, coords = vector3(-95.2, -2768, 6.1), currency = 'black_money' },
	
	{ type = Config.Locksmith, coords = vector3(170.3, -1799.3, 29.3), name = 'Locksmiths' },

	{ type = Config.GardenStore, coords = vector3(-661.1, -900.8, 24.6), name = 'Green Fingers' },

	{ type = Config.FlyWheel, coords = vector3(1776.8, 3327.6, 41.4), name = 'Fly Wheels' },

	{ type = Config.SmokeonWater, coords = vector3(-1169.3, -1572.8, 4.7), name = 'Smoke On The Water' },

	{ type = Config.TheSeaWord, coords = vector3(-1687.3, -1071.9, 13.2), name = 'The Sea Word' },
	
	{ type = Config.BaitTackle, coords = vector3(-1602.1, 5203.6, 4.3), name = 'Bait Tackle' },

	{ type = Config.PhoneStore, coords = vector3(-657.5, -854.7, 24.5), name = 'Phone of Life' },

	{ type = Config.WilliesWholesalers, coords = vector3(-83.3, 6496.9, 31.5), name = 'Willies Wholesalers' },
}