-- @Date:   2017-06-14T18:55:52+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-14T21:26:34+02:00
-- @License: GNU General Public License v3.0

Marker = {}
Marker.__index = Marker

-- Meta table for users
setmetatable(Marker, {

  __call = function(self, data)
    local p = {}
    p.type = data.type or 1
    p.x = data.x or 0.0
    p.y = data.y or 0.0
    p.z = data.z or 0.0
    p.weight = data.weight or 2.0
    p.height = data.height or 0.5
    p.red = data.red or 255
    p.green = data.green or 255
    p.blue = data.blue or 255
    p.alpha = data.alpha or 255
    p.enable = data.enable or false
    p.showDistance = data.showDistance or p.weight + 20
    return setmetatable(p, Marker)
  end

})

function Marker:Display(display)
  Citizen.CreateThread(function()

    self.display = display

  end)
end

function Marker:Show()
  Citizen.CreateThread(function()

    local weight = self.weight * 2.0
    local height = self.height + 0.0
    DrawMarker(self.type, self.x, self.y, (self.z - 1), 0, 0, 0, 0, 0, 0, weight, weight, height, self.red, self.green, self.blue, self.alpha, 0, 0, 0, 0)

  end)
end
