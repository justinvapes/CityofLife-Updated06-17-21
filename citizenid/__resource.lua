resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description "Citizen ID Card"

client_scripts {
    "@es_extended/locale.lua",
    "client.lua",
    "en.lua",
    "config.lua"
  }
  
  server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "@es_extended/locale.lua",
    "server.lua",
    "en.lua",
    "config.lua"
  }

  dependencies {
    "es_extended"
  }
