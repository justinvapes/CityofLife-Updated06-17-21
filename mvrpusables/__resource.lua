resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
  'usables_c.lua',
  'foods_c.lua',
  'config.lua'
}

server_scripts {	
  '@mysql-async/lib/MySQL.lua',
  'usables_s.lua',
  'foods_s.lua',
  'config.lua'
}
