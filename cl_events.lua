-- @Date:   2017-06-13T14:50:56+02:00
-- @Project: FiveM Tools
-- @Last modified time: 2017-06-15T16:36:09+02:00
-- @License: GNU General Public License v3.0

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
