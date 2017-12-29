local altkey = "Mod1"
local winkey = "Mod4"

local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup").widget
local pulseaudio = require("pulseaudio")
local brightness = require("brightness")

local keybindings = {}

keybindings.globalkeys = awful.util.table.join(
    awful.key({ winkey,           }, "s",      hotkeys_popup.show_help,
              {description="show help", group="awesome"}),
    awful.key({ winkey,           }, "Left",   awful.tag.viewprev,
              {description = "view previous", group = "tag"}),
    awful.key({                   }, "XF86Back", awful.tag.viewprev,
              {description = "view previous", group = "tag"}),
    awful.key({ winkey,           }, "Right",  awful.tag.viewnext,
              {description = "view next", group = "tag"}),
    awful.key({                   }, "XF86Forward", awful.tag.viewnext,
              {description = "view next", group = "tag"}),
    awful.key({ winkey,           }, "Escape", awful.tag.history.restore,
              {description = "go back", group = "tag"}),
    awful.key({ altkey,           }, "Tab",
        function ()
            awful.client.focus.byidx( 1)
        end,
        {description = "focus next by index", group = "client"}
    ),
    awful.key({ altkey, "Shift"   }, "Tab",
        function ()
            awful.client.focus.byidx(-1)
        end,
        {description = "focus previous by index", group = "client"}
    ),
    awful.key({ winkey,           }, "w", function () mymainmenu:show() end,
              {description = "show main menu", group = "awesome"}),

    -- Layout manipulation
    awful.key({ winkey, "Shift"   }, "Left", function () awful.client.swap.byidx(  1)    end,
              {description = "swap with next client by index", group = "client"}),
    awful.key({ winkey, "Shift"   }, "Right", function () awful.client.swap.byidx( -1)    end,
              {description = "swap with previous client by index", group = "client"}),
    awful.key({ winkey, "Control" }, "Left", function () awful.screen.focus_relative( 1) end,
              {description = "focus the next screen", group = "screen"}),
    awful.key({ winkey, "Control" }, "Right", function () awful.screen.focus_relative(-1) end,
              {description = "focus the previous screen", group = "screen"}),
    awful.key({ winkey,           }, "u", awful.client.urgent.jumpto,
              {description = "jump to urgent client", group = "client"}),
    awful.key({ winkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
        {description = "go back", group = "client"}),

    -- Standard program
    awful.key({ winkey,           }, "Return", function () awful.spawn(terminal) end,
              {description = "open a terminal", group = "launcher"}),
    awful.key({ winkey, "Control" }, "r", awesome.restart,
              {description = "reload awesome", group = "awesome"}),
    awful.key({ winkey, "Shift"   }, "q", awesome.quit, {description = "quit awesome", group = "awesome"}),
    awful.key({ winkey, }, "l",
       function()
	  awful.spawn("/usr/bin/i3lock -i /home/bag/src/dotfiles/templates/w95lock.png")
       end, {description = "lock screen", group = "awesome"}),
    awful.key({ }, "XF86AudioRaiseVolume",  pulseaudio.VolumeUp),
    awful.key({ }, "XF86AudioLowerVolume",  pulseaudio.VolumeDown),
    awful.key({ }, "XF86AudioMute",         pulseaudio.ToggleMute),

    awful.key({ }, "XF86MonBrightnessUp", brightness.up),
    awful.key({ }, "XF86MonBrightnessDown", brightness.down),
    awful.key({                   }, "XF86ScreenSaver",
       function()
	  awful.spawn("/usr/bin/xset dpms force off")
       end,
       {description = "blank screen", group = "awesome"}),

    
--    awful.key({ winkey,           }, "l",     function () awful.tag.incmwfact( 0.05)          end,
--              {description = "increase master width factor", group = "layout"}),
--    awful.key({ winkey,           }, "h",     function () awful.tag.incmwfact(-0.05)          end,
--              {description = "decrease master width factor", group = "layout"}),
    awful.key({ winkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1, nil, true) end,
              {description = "increase the number of master clients", group = "layout"}),
    awful.key({ winkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1, nil, true) end,
              {description = "decrease the number of master clients", group = "layout"}),
    awful.key({ winkey, "Control" }, "h",     function () awful.tag.incncol( 1, nil, true)    end,
              {description = "increase the number of columns", group = "layout"}),
    awful.key({ winkey, "Control" }, "l",     function () awful.tag.incncol(-1, nil, true)    end,
              {description = "decrease the number of columns", group = "layout"}),
    awful.key({ winkey,           }, "space", function () awful.layout.inc( 1)                end,
              {description = "select next", group = "layout"}),
    awful.key({ winkey, "Shift"   }, "space", function () awful.layout.inc(-1)                end,
              {description = "select previous", group = "layout"}),

    awful.key({ winkey, "Control" }, "n",
              function ()
                  local c = awful.client.restore()
                  -- Focus restored client
                  if c then
                      client.focus = c
                      c:raise()
                  end
              end,
              {description = "restore minimized", group = "client"}),

    -- Prompt
    awful.key({ winkey },            "r",     function () awful.screen.focused().mypromptbox:run() end,
              {description = "run prompt", group = "launcher"}),

    awful.key({ winkey }, "x",
              function ()
                  awful.prompt.run {
                    prompt       = "Run Lua code: ",
                    textbox      = awful.screen.focused().mypromptbox.widget,
                    exe_callback = awful.util.eval,
                    history_path = awful.util.get_cache_dir() .. "/history_eval"
                  }
              end,
              {description = "lua execute prompt", group = "awesome"}),
    -- Menubar
    awful.key({ winkey }, "p", function() menubar.show() end,
              {description = "show the menubar", group = "launcher"})
)

keybindings.clientkeys = awful.util.table.join(
    awful.key({ winkey,           }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        {description = "toggle fullscreen", group = "client"}),
    awful.key({ altkey, }, "F4",      function (c) c:kill()                         end,
              {description = "close", group = "client"}),
    awful.key({ winkey, "Control" }, "space",  awful.client.floating.toggle                     ,
              {description = "toggle floating", group = "client"}),
    awful.key({ winkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end,
              {description = "move to master", group = "client"}),
    awful.key({ winkey,           }, "o",      function (c) c:move_to_screen()               end,
              {description = "move to screen", group = "client"}),
    awful.key({ winkey,           }, "t",      function (c) c.ontop = not c.ontop            end,
              {description = "toggle keep on top", group = "client"}),
    awful.key({ winkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end ,
        {description = "minimize", group = "client"}),
    awful.key({ altkey,           }, "F3",
        function (c)
            c.maximized = not c.maximized
            c:raise()
        end ,
        {description = "maximize", group = "client"})
)

return keybindings
