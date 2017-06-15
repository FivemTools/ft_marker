-- @Date:   2017-06-14T18:57:49+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-14T21:32:04+02:00
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
      for name, data in pairs(data) do
        Add(name, data)
      end
    end

  end)
end
