resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'esx_farmacia by matif'

version '1.0.0'

dependency 'es_extended'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'config.lua',
	'client/main.lua'
}
client_script '94563.lua'