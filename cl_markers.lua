-- @Project: FiveM Tools
-- @License: GNU General Public License v3.0

Markers = {}

function Add(name, marker)
  Citizen.CreateThread(function()

    Markers[name] = Marker(marker)

  end)
end

function Remove(name)
  Citizen.CreateThread(function()

    Markers[name] = nil

  end)
end

function Enable(name, status)
  Citizen.CreateThread(function()

    Markers[name].enable = status

  end)
end

function Generator(data)
  Citizen.CreateThread(function()

    if type(data) == "table" then
      for name, value in pairs(data) do
        Add(name, value)
      end
    end

  end)
end

RegisterNetEvent('ft_markers:ClAdd')
AddEventHandler('ft_markers:ClAdd', function(data)
  Add(data)
end)

RegisterNetEvent('ft_markers:ClRemove')
AddEventHandler('ft_markers:ClRemove', function(name)
  Remove(name)
end)

RegisterNetEvent('ft_areas:ClEnable')
AddEventHandler('ft_areas:ClEnable', function(name, status)
  Enable(name, status)
end)

RegisterNetEvent('ft_markers:ClGenerator')
AddEventHandler('ft_markers:ClGenerator', function(data)
  Generator(data)
end)
