ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
print('^0[^4ARtuRO Badulaque^0] ^2Starteado^0')

ESX.RegisterServerCallback('badulaques:ComprarOtros', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsOtros[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('Has comprado 1x '..weaponName..' por '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's badulaque", content = "**Badulaque**\n```Nombre:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nComprado:"..weaponName.."\nHora:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('No tienes suficiente dinero')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('badulaques:ComprarBebidas', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsBebidas[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('Has comprado 1x '..weaponName..' por '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's badulaque", content = "**Badulaque**\n```Nombre:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nComprado:"..weaponName.."\nHora:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('No tienes suficiente dinero')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('badulaques:ComprarSnacks', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsSnacks[identifier].price
    local webhook = Config.webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('Has comprado 1x '..weaponName..' por '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's badulaque", content = "**Badulaque**\n```Nombre:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nComprado:"..weaponName.."\nHora:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('No tienes suficiente dinero')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('badulaques:ComprarComidaLista', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsComidaLista[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('Has comprado 1x '..weaponName..' por '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's badulaque", content = "**Badulaque**\n```Nombre: " ..fullname.. "\nSteam: "..xPlayer.identifier.."\nComprado: "..weaponName.."\nHora: "..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('No tienes suficiente dinero')
				cb(false)
			end
			
end)