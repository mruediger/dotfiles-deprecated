local awful = require("awful")
local naughty = require("naughty")

local brightness = {}

function brightness:up()
   awful.spawn("brightnessctl s +2", false)
end

function brightness:down()
   awful.spawn("brightnessctl s 2-", false)
end

return brightness
