fx_version 'bodacious'
games {'gta5'}

author 'SimpleScripts'
description 'Active Blips'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client.lua',
}

server_scripts {
	'server.lua'
}

escrow_ignore {
    "config.lua"
}

