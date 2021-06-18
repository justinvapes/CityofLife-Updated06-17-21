-- FXVersion Version
fx_version 'adamant'
games { 'gta5' }

-- Client Scripts
client_script 'client/main.lua'

-- Server Scripts
server_script 'server/main.lua'

-- NUI Default Page
ui_page "client/html/index.html"

-- Files needed for NUI
-- DON'T FORGET TO ADD THE SOUND FILES TO THIS!
files {
    'client/html/index.html',
    -- Begin Sound Files Here...
    -- client/html/sounds/ ... .ogg
	'client/html/sounds/911beep.ogg',
	'client/html/sounds/report.ogg',
	'client/html/sounds/doorkick.ogg',
	'client/html/sounds/doorknock.ogg',
	'client/html/sounds/teleport.ogg',
	'client/html/sounds/doorclose.ogg',
	'client/html/sounds/dooropen.ogg',
	'client/html/sounds/speedcamera.ogg',
	'client/html/sounds/carfob.ogg',
	'client/html/sounds/on.ogg',
	'client/html/sounds/off.ogg',
    'client/html/sounds/success.ogg',
	'client/html/sounds/error.ogg',
	'client/html/sounds/demo.ogg',
	'client/html/sounds/buckle.ogg',
	'client/html/sounds/unbuckle.ogg',
	'client/html/sounds/handcuff.ogg',
    'client/html/sounds/unhandcuff.ogg',
	'client/html/sounds/jail.ogg',
	'client/html/sounds/weed.ogg',
	'client/html/sounds/vangelico.ogg',
	'client/html/sounds/addiction.ogg',
	'client/html/sounds/robalarm.ogg',
	'client/html/sounds/whale.ogg'
}

