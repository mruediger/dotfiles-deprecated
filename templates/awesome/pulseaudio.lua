local awful = require("awful")

local pulseaudio = {}

function pulseaudio:VolumeUp()
   awful.spawn('pactl set-sink-volume 0 +5%', false)
end

function pulseaudio:VolumeDown()
   awful.spawn('pactl set-sink-volume 0 -5%', false)
end

function pulseaudio:ToggleMute()
   awful.spawn('pactl set-sink-mute 0 toggle', false)
end

return pulseaudio
