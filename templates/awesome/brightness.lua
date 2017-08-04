local awful = require("awful")
local naughty = require("naughty")

local brightness = {}

local sysfile = "/sys/class/backlight/intel_backlight/brightness"

function brightness:up()
   awful.spawn.with_line_callback('cat ' .. sysfile, {
     stdout = function(line)
        brtns = tonumber(line) + 100
        awful.spawn.with_shell('echo ' .. brtns .. ' > ' .. sysfile, false)        
     end,
   })
end

function brightness:down()
   awful.spawn.with_line_callback('cat ' .. sysfile, {
     stdout = function(line)
        brtns = tonumber(line) - 100
        awful.spawn.with_shell('echo ' .. brtns .. ' > ' .. sysfile, false)        
     end,
   })
end

return brightness
