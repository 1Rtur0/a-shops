ESX = nil

-- ESX
CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


-- Tienda
CreateThread(function()
	while true do
		local sleep = 1000
		for k, v in pairs(Config.Shops.Locations) do
			local me = PlayerPedId()
			local heading = GetEntityHeading(me)

			if GetDistanceBetweenCoords(GetEntityCoords(me), v) <= 5 then

					DrawText3D(v+vector3(0.0, 0.0, 0.5), vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0),"~r~~s~", 0, 0.1, 0.1,255)
					DrawMarker(20,v+vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 0.0), vector3(0.0, 0.0, 10.0), vector3(0.3, 0.3, 0.2), 0, 0, 0, 150, false, false, 2, false, false, false)
					sleep = 0

				if GetDistanceBetweenCoords(GetEntityCoords(me),v) <= 1.8 and not IsPedDeadOrDying(me, true) then
					if not IsPedInAnyVehicle(me, false) then
						nativeText("Hello, with what can I help you?", 7000)
						ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to open the store")

						if IsControlJustReleased(0, 38) then
							Shop()
						end 

					end
				end
			end
		end
		Wait(sleep)
	end
end)


-- Peds
CreateThread(function()

	for k, v in pairs(Config.Peds.Locations) do

	if Config.EnablePeds then
		local npc = CreatePed(4, 0xD15D7E71, v.x, v.y, v.z, v.h, false, true)
		SetEntityHeading(npc, v.h)
		FreezeEntityPosition(npc, true)
		SetBlockingOfNonTemporaryEvents(npc, true)
	end

	end
end)


-- Blips
CreateThread(function()
	for i=1, #Config.Shops.Locations, 1 do
		local blip = AddBlipForCoord(Config.Shops.Locations[i])

		SetBlipSprite (blip, 52)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.5)
		SetBlipColour (blip, 0)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentSubstringPlayerName("Shops")
		EndTextCommandSetBlipName(blip)
	end
end)
