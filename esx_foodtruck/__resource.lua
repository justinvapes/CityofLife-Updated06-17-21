resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

version '1.0.0'

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"@es_extended/locale.lua",
	"locales/en.lua",
	"config.lua",
	"server/main.lua",
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua',
}
