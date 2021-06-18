--[[
    Some information:
      * vector3 is in the format x, y, z 
      * vector4 is in the frmat x, y, z, heading
--]]

esx_event = "esx:getSharedObject" -- the (client) event to load esx, the server event can be changed in server_data.lua
society_event = "esx_society:openBossMenu" -- the event to open the boss menu

Config = {
    Use3DText = true,

    Options = {
        MenuAlign = "center",
        
        Inventory = 2, -- you need to be this grade, or higher, to access the inventory
        Items = true, -- if you can store items
        Weapons = true, -- if you can store weapons
        JobMarkers = true, -- draw circles for job locations?
        Markers = true, -- draw circles for non job locations? (lean etc)

        MarkerColour = {
            red = 255,
            green = 240,
            blue = 0,
            alpha = 200
        },

        SocietyOptions = {
            wash = true,
        },
    },

    ThrowMoney = 10, -- how much it costs to throw money

    Locations = {
        {
            Location = vector3(128.88, -1298.88, 29.23),
            Locker = vector3(105.67, -1303.99, 28.77),

            Boss = {
                Employ = vector3(94.79, -1292.79, 29.27),
                Storage = vector3(92.72, -1291.9, 29.27),
            },

            Lean = {
                vector4(107.4, -1293.01, 28.26, 22.75),
                vector4(108.15, -1292.55, 28.26, 100.59),
                vector4(109.13, -1292.01, 28.26, 76.65),

                vector4(110.54, -1291.04, 28.26, 22.75),
                vector4(109.16, -1286.96, 28.26, 212.2),
                vector4(107.66, -1287.12, 28.26, 212.2),
                vector4(106.39, -1287.83, 28.26, 212.2),
                vector4(105.38, -1288.4, 28.26, 212.2),
            },

            Bar = {
                Teleport = {
                    In = vector4(132.89, -1293.76, 29.27, 117.28),
                    Out = vector4(131.85, -1287.66, 29.27, 9.69),
                },

                Fridge = vector3(136.25, -1288.23, 29.27),
                Mix = vector4(129.36, -1283.73, 29.27, 122.98)
            },

            Poledance = {
                {
                    Position = vector3(108.80, -1289.30, 29.20), 
                    dict = "mini@strip_club@pole_dance@pole_dance1",
                    anim = "pd_dance_01"
                },
                {
                    Position = vector3(104.78, -1294.37, 29.25),
                    dict = "mini@strip_club@pole_dance@pole_dance2",
                    anim = "pd_dance_02"
                },
                {
                    Position = vector3(102.18, -1290.13, 29.25), 
                    dict = "mini@strip_club@pole_dance@pole_dance3",
                    anim = "pd_dance_03"
                },
            },

            Lapdance = {
                {
                    dance = vector4(113.13, -1301.90, 29.27, 25.63),
                    sit = vector4(112.3742, -1300.773, 28.81934, 216.434326),
                    animations = {
                        dance = {
                            dict = "mini@strip_club@private_dance@part2",
                            anim = "priv_dance_p2"
                        },
                        
                        sit = {
                            dict = "mini@strip_club@lap_dance_2g@ld_2g_reach",
                            anim = "ld_2g_sit_idle"
                        }
                    }
                },
                {
                    dance = vector4(112.28, -1305.07, 29.27, 208.81),
                    sit = vector4(113.0845, -1306.193, 28.81853, 40.8088),
                },

                {
                    dance = vector4(111.21, -1302.84, 29.27, 25.63),
                    sit = vector4(110.6038, -1301.769, 28.81853, 216.23579)
                },
                {
                    dance = vector4(113.13, -1301.90, 29.27, 25.63),
                    sit = vector4(112.3742, -1300.773, 28.81934, 216.434326)
                },
            },
        },

    },

    Bar = {
        Items = {
            -- {"item", price},
            {"vodka", 13},
            {"cointreau", 20},
            {"cranberry_juice", 10},
            {"fresh_mix", 7},

            {"mint", 2},
            {"lime", 3},
            {"sugar", 1},
            {"ice", 0},
            {"white_rum", 15},
            {"club_soda", 10},

            {"light_rum", 15},
            {"dark_rum", 15},
            {"gold_rum", 15},
            {"curacao", 10},
            {"syrup", 7},

            {"water", 1},
            {"bourbon", 15},

            {"cachaca", 10},
            
            {"limeade", 10},
            {"tequila", 15},
            {"triple_sec", 15},

            {"coconut_milk", 5},
            {"pineapple_juice", 5},
        },

        Recipes = {
        --[[
            {
                Label = "Name of the drink",
                Name = "item name",
                Ingredients = {
                    {"ingredient", amount}
                }
            }
        --]]
            {
                Label = "Cosmopolitan",
                Name = "cosmopolitan",
                Ingredients = {
                    {"vodka", 4},
                    {"cointreau", 2},
                    {"cranberry_juice", 1},
                    {"fresh_mix", 1}
                }
            },
            {
                Label = "Mojito",
                Name = "mojito",
                Ingredients = {
                    {"mint", 10},
                    {"lime", 1},
                    {"sugar", 2},
                    {"ice", 1},
                    {"white_rum", 2},
                    {"club_soda", 1}
                }
            },
            {
                Label = "Mai Tai",
                Name = "mai_tai",
                Ingredients = {
                    {"light_rum", 2},
                    {"gold_rum", 2},
                    {"dark_rum", 2},
                    {"curacao", 1},
                    {"syrup", 1},
                    {"lime", 1}
                }
            },
            {
                Label = "Mint Julep",
                Name = "mint_julep",
                Ingredients = {
                    {"water", 1},
                    {"sugar", 1},
                    {"mint", 3},
                    {"bourbon", 2},
                }
            },
            {
                Label = "Caipirinha",
                Name = "caipirinha",
                Ingredients = {
                    {"cachaca", 2},
                    {"lime", 1},
                    {"sugar", 1}
                }
            },
            {
                Label = "Margarita",
                Name = "margarita",
                Ingredients = {
                    {"limeade", 1},
                    {"tequila", 6},
                    {"cointreau", 1},
                    {"triple_sec", 1}
                }
            },
            {
                Label = "Pina Colada",
                Name = "pina_colada",
                Ingredients = {
                    {"light_rum", 4},
                    {"coconut_milk", 2},
                    {"pineapple_juice", 10}
                }
            },
        },
    },
}