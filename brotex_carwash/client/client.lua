ESX = exports["es_extended"]:getSharedObject()


-- DRAW MARKER
for k, v in ipairs(Brotex.CarWash) do

  local box = lib.zones.box({
    coords = v.coords,
    size = v.size,
    debug = false, 
    inside = function()
      lib.showTextUI(Brotex.Translate.textui, {icon = Brotex.Settings.iconui})
      local isDriving = IsPedInAnyVehicle(PlayerPedId(), false)
      local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
      if IsControlJustPressed(1, 38) and isDriving and GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
        TriggerServerEvent('brotex:pay') 
      end 
  end,


    onEnter = function()
      lib.showTextUI({icon = Brotex.Settings.iconui, Brotex.Translate.textui})
    end,
    onExit = function()
      lib.hideTextUI()

    end
  })
end  


-- DRAW BLIPS
CreateThread(function()
  for _, info in pairs(Brotex.Blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, 100)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, 0)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(Brotex.Translate.blip)
      EndTextCommandSetBlipName(info.blip)
  end
end)




-- START WASH
RegisterNetEvent('brotex:cleancar')
AddEventHandler('brotex:cleancar', function()
  local ped = PlayerPedId()
  local vehicle = GetPlayersLastVehicle(ped)
  lib.progressCircle({
    duration = Brotex.Settings.detailTime,
    label = Brotex.Translate.carwashing,
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
  })
    SetVehicleDirtLevel(car, 0.0)
    lib.notify({
      title = Brotex.Translate.title,
      description = Brotex.Translate.washingfinish,
      position = 'top',
      style = {
          backgroundColor = '#141517',
          color = '#909296'
      },
      icon = Brotex.Settings.finishicon,
      iconColor = '#86E44C'
  })
end)

