-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

Citizen.CreateThread(function()

  while true do

    Citizen.Wait(0)

    if NetworkIsSessionStarted() then

      local playerPed = GetPlayerPed(-1)
      local playerLocalisation = GetEntityCoords(playerPed)

      for _, marker in pairs(Markers) do
        if GetDistanceBetweenCoords(marker.x, marker.y, marker.z, playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, true) <= marker.showDistance and marker.enable then
          marker:Show()
        end
      end

    end

  end

end)
