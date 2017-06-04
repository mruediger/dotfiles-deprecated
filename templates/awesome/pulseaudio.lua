local awful = require("awful")

local pulseaudio = {}

local default_sink = "alsa_output.pci-0000_00_1f.3.analog-stereo"

function pulseaudio:VolumeUp()
   awful.spawn('pactl set-sink-volume ' .. default_sink .. ' +5%', false)
end

function pulseaudio:VolumeDown()
   awful.spawn('pactl set-sink-volume ' .. default_sink .. ' -5%', false)
end

function pulseaudio:ToggleMute()
   awful.spawn('pactl set-sink-mute ' .. default_sink .. ' toggle', false)
end

return pulseaudio
