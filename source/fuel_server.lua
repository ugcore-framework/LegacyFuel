local UgCore = exports['ug-core']:GetCore()

RegisterServerEvent('fuel:pay')
AddEventHandler('fuel:pay', function(price)
	local player = UgCore.Functions.GetPlayer(source)
	local amount = UgCore.Shared.Math.Round(price)
	if price > 0 then
		player.Functions.RemoveMoney('cash', amount, 'Fuel')
	end
end)
