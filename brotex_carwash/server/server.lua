ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('brotex:pay')
AddEventHandler('brotex:pay', function()
 local xPlayer = ESX.GetPlayerFromId(source)
 local enoughmoney = xPlayer.getMoney()
 local price = Brotex.Settings.CleaningPrice
  if enoughmoney >= price then
    xPlayer.removeMoney(price)
    TriggerClientEvent('ox_lib:notify', source, {
        title = Brotex.Translate.title,
        description = Brotex.Translate.pay,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#909296'
        },
        icon = Brotex.Settings.moneyicon,
        iconColor = '#C53030'
    })
    TriggerClientEvent('brotex:cleancar', source)
  else
    TriggerClientEvent('ox_lib:notify', source, {
        title = Brotex.Translate.title,
        description = Brotex.Translate.nomoney,
        position = 'top',
        style = {
            backgroundColor = '#141517',
            color = '#909296'
        },
        icon = Brotex.Settings.moneyicon,
        iconColor = '#C53030'
    })

  end
end)