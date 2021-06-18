-- resource manifest
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

-- dependency

files {
	'events.meta',
	'relationships.dat'
}

data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'

-- client scripts
client_scripts {
    'client/calm_ai.lua',
    'client/minimap.lua',
    'client/crouch.lua',
	'client/hideintrunk.lua',
    'client/hotwire_c.lua',
    'client/ko_client.lua',
    'client/LeaveEngineRunning.lua',
    'client/natives.lua',
    'client/neontoggle.lua',
    'client/passager.lua',
    'client/pausemenu.lua', 
    'client/pdview.lua', 
    'client/pointing.lua',
    'client/push_client.lua',
    'client/RemoveAIServices.lua',
    'client/rich.lua',
    'client/vehlock_c.lua',
    'client/armor_c.lua',
    'client/indicators_client.lua',
    'client/tazereffect.lua',
    'client/sellthecarbby_c',
    'config.lua',
}
-- server scripts
server_scripts {
	'config.lua',
	'server/hotwire_s.lua',
    'server/pausemenu_s.lua',
    'server/vehlock_s.lua',
    'server/indicators_server.lua',
    'server/sellthecarbby_s.lua',
    'server/armor_s.lua',
    '@mysql-async/lib/MySQL.lua',
}

dependencies {
	't0sic_loadingbar'
}
