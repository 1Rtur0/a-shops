fx_version 'cerulean'
games {'gta5'}

author 'ARtuRO#0028'
description 'Advanced Shops System [ARtuRO#0028]'

client_scripts {
	'@es_extended/locale.lua',
	"Client/Modules/*.lua",
	"Config.lua",
	"Client/*.lua"
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
    	'@es_extended/locale.lua',
	"Config.lua",
	"Server/*.lua"
}
