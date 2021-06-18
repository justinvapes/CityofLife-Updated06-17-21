-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

name 'MrNewbPawn'
author 'MrNewb#6475'
version '0.1'

server_scripts {
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
}

dependency {
	'es_extended',
}
