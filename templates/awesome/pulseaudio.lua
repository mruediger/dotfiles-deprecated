local awful = require("awful")

local pulseaudio = {}



function pulseaudio:VolumeUp()
   awful.spawn('pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo +5%', false)
end

function pulseaudio:VolumeDown()
   awful.spawn('pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo -5%', false)
end

function pulseaudio:ToggleMute()
   awful.spawn('pactl set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo toggle', false)
end


function pulseaudio:ToggleMicMute()
   awful.spawn('pactl set-source-mute 1 toggle', false)
end



return pulseaudio
