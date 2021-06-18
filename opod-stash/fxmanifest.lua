fx_version 'adamant'
game 'gta5'

author 'Opod'
description 'Opod Stash House'
mod 'opod-stash'
version '1.0.1'

this_is_a_map 'yes'

client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'utils.lua',
    'locales/*.lua',
    'client/functions.lua',
    'client/client.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua',
    'utils.lua',
    'credentials.lua',
    'server/stash.lua',
    'server/server.lua',
    'server/callbacks.lua'
}

ui_page './nui/index.html'

files {
    './nui/digital-7.ttf',
    './nui/script.js',
    './nui/style.css',
    './nui/*.ogg',
    './nui/index.html',
    'shellpropsv15.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'shellpropsv15.ytyp'