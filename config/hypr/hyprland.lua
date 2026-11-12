--                                    !!MONITORS!!                                   #
-- --------------------------------------------------------------------------------- #
--                                    !!MONITORS!!                                   #

-- Make sure to customize monitors! This is just my setup so you get an idea.
-- run `hyprctl monitors all` to see all your monitors!!!


hl.monitor({
    output = "eDP-1",
    mode = "2256x1504@60",
    position = "0x0",
    scale = "1",
})

hl.monitor({
    output = "DP-3",
    mode = "2560x1440@164.84",
    position = "1920x0",
    scale = "1",
})

hl.monitor({
    output = "HDMI-A-2",
    mode = "3840x2160@59.99700",
    position = "4480x0",
    scale = "1",
})

-- Startup programs, these are mine, most likely you'll have these as well.

-- Default programs, these are what I prefer.
local terminal = "kitty"
local fileManager = "GTK_THEME=diinki-retro-dark nautilus"
local menu = "pgrep wofi > /dev/null 2>&1 && killall wofi || wofi --show drun"
local browser = "waterfox"

-- Environment variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

--                                    !!INPUT!!                                      #
-- --------------------------------------------------------------------------------- #
--                                    !!INPUT!!                                      #

-- READ https://wiki.hyprland.org/Configuring/Variables/#input IF CONFUSED!
-- Example keyboard/mouse input settings.

local mainMod = "SUPER"

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot --mode region --output-folder /tmp"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + S", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })

 hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Project Settings)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 250"
 })

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Preferences)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 250"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UnityEditor.AddComponent.AddComponentWindow)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 250"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Package Manager)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 250"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UI Toolkit Debugger)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 250"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Font Asset Creator)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 250 500"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Background Tasks)$",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 500 250"
})

hl.window_rule({
    match = {
        initial_title = "(UnityEditor.PopupWindow)",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 150 300"
})

hl.window_rule({
    match = {
        initial_title = "(UnityEditor.AddComponent.AddComponentWindow)",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 230 200"
})

hl.window_rule({
    match = {
        initial_title = "(UnityEngine.InputSystem.Editor.AdvancedDropdownWindow)",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 500 500"
})

hl.window_rule({
    match = {
        initial_title = "(UnityEditor.AnnotationWindow)",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 230 500"
})

hl.window_rule({
    match = {
        initial_title = "(UnityEditor.IMGUI.Controls.AdvancedDropdownWindow)",
    },
    -- TODO: manual review — unmapped window rule action: "minsize 300 200"
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UnityEditor.AddComponent.AddComponentWindow)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UnityEditor.IMGUI.Controls.AdvancedDropdownWindow)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UnityEngine.InputSystem.Editor.AdvancedDropdownWindow)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(UnityEditor.PopupWindow)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Preferences)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(Color)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^(Unity)$",
        title = "^(HDR Color)$",
    },
    move = "cursor 0 0",
})

hl.window_rule({
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})

hl.config({
    input = {
        -- Switch layout with pressing: alt + shift
        kb_layout = "us,se",
        kb_options = "grp:alt_shift_toggle",
        -- Set as needed
        kb_rules = "",
        kb_variant = "",
        kb_model = "",
        follow_mouse = 1,
        -- Range is -1.0 to 1.0 | 0 means no modification to sensitivity.
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
    -- This fixes a few bugs.
    cursor = {
        no_hardware_cursors = true,
    },
    --                                    !!DESIGN!!                                     #
    -- --------------------------------------------------------------------------------- #
    --                                    !!DESIGN!!                                     #
    animations = {
        enabled = false,
    },
    -- The gaps between windows, as well as border colors.
    -- proportional to the taskbar values.
    general = {
        -- Inner and Outer gaps between windows.
        gaps_in = 5,
        gaps_out = 10,
        -- I prefer a thin border
        border_size = 1,
        -- Border colors.
        col = {
            active_border = "rgb(d8cab8)",
            inactive_border = "rgb(AC82E9)",
        },
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,
        layout = "dwindle",
        -- READ https://wiki.hyprland.org/Configuring/Tearing/ BEFORE TURNING ON!
        allow_tearing = false,
    },
    -- Window Decorations! Shadow, Blur, etc.
    decoration = {
        -- 8px same as taskbar, change if wanted.
        rounding = 0,
        -- I want transparancy to not change, since we have the colored border.
        active_opacity = 1.0,
        inactive_opacity = 1,
        -- Window Shadow
        shadow = {
            enabled = true,
            range = 16,
            render_power = 4,
            color = "rgba(0,0,0,0.2)",
        },
        -- Transparent Window Blur
        blur = {
            enabled = false,
        },
    },
    -- Read https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more info on dwindle layout.
    dwindle = {
        preserve_split = true,
    },
    -- Read https://wiki.hyprland.org/Configuring/Master-Layout/ for more info on master layout.
    master = {
        new_status = "master",
    },
    -- We have our own wallpapers :) So I'll disable default things.
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
    --                                    !!WINDOW RULES!!                               #
    -- --------------------------------------------------------------------------------- #
    -- These window rules are fixes to bugs that certain programs I use have, add more as
    -- you see fit.
    -- adding more here as needed.
    -- windowrulev2 = move cursor, class:^(Unity)$
    -- Color Picker for unity
    -- Fix dragging issues with XWayland
})

hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("waybar")
    hl.exec_cmd("$HOME/.config/eww/scripts/start.sh")
end)
