--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

hl.workspace_rule({
	workspace = "name:Hello",
	monitor = "HDMI-A-1",
	default = true,
	gaps_in = 0,
	gaps_out = 2,
})

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = PicinPic,
	match = { title = "^(Picture-in-picture)$" },
	float = true,
})

hl.window_rule({
	name = kitty,
	match = {
		title = "^(kitty)$",
		class = "^(kitty)$",
	},
	float = true,
	pin = true,
	size = { 1280, 720 },
})

hl.window_rule({
	name = copyq,
	match = { class = "^(com.github.hluk.copyq)$" },
	float = true,
	pin = true,
	size = { 500, 375 },
	move = { "cursor_x-(window_w*0.05)", "cursor_y-(window_h*0.15)" },
})

hl.window_rule({
	name = copyq,
	match = { class = "^(thunar)$" },
	float = true,
	pin = true,
	move = { "cursor_x-(window_w*0.5)", "cursor_y-(window_h*0.5)" },
})

hl.window_rule({
	name = copyq,
	match = { class = "^(xdg-desktop-portal-gtk)$" },
	float = true,
	pin = true,
	move = { "cursor_x-(window_w*0.5)", "cursor_y-(window_h*0.5)" },
})

hl.window_rule({
	name = "xwaylandvideobridge",
	match = { class = "^(xwaylandvideobridge)$" },
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
