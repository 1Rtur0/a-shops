ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
print('^0[^4ARtuRO Shops^0] ^2Starteado^0')

ESX.RegisterServerCallback('shops:ComprarOtros', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsOthers[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('You have bought 1x a '..weaponName..' for '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's shops", content = "**Shops**\n```Name:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nBought:"..weaponName.."\Time:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('You dont have enough money')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('shops:ComprarBebidas', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsDrinks[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('You have bought 1x a '..weaponName..' for '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's shops", content = "**Shops**\n```Name:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nBought:"..weaponName.."\Time:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('You dont have enough money')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('shops:ComprarSnacks', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsSnacks[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('You have bought 1x a '..weaponName..' for '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's shops", content = "**Shops**\n```Name:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nBought:"..weaponName.."\Time:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('You dont have enough money')
				cb(false)
			end
			
end)

ESX.RegisterServerCallback('shops:ComprarComidaLista', function(source, cb, weaponName,identifier)
	local xPlayer = ESX.GetPlayerFromId(source)
    local fullname = GetPlayerName(source)
    local id = ESX.GetPlayerFromId(source).getIdentifier()
    local DATE = os.date("%H:%M:%S %d/%m/%y")
	local price = Config.ItemsReadyMeal[identifier].price
    local webhook = Config.Webhook
		
			if xPlayer.getMoney() >= price then
				xPlayer.removeMoney(price)
				xPlayer.addInventoryItem(weaponName, 1)
				xPlayer.showNotification('You have bought 1x a '..weaponName..' for '..price..'$')
			PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = "arturo's shops", content = "**Shops**\n```Name:" ..fullname.. "\nSteam:"..xPlayer.identifier.."\nBought:"..weaponName.."\Time:"..DATE.."```"}), { ['Content-Type'] = 'application/json' })
				cb(true)
			else
				xPlayer.showNotification('You dont have enough money')
				cb(false)
			end
			
end)
