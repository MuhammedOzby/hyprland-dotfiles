-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Kehribar Gece design language
-- Canvas:   #111827
-- Surface:  #1A2438
-- Surface+: #222E45
-- Border:   #344158
-- Amber:    #F5A623
-- Lavender: #A78BFA

hl.config({
	general = {
		gaps_in = 8,
		gaps_out = 8,

		border_size = 2,

		col = {
			active_border = { colors = { "rgba(F5A623ee)", "rgba(A78BFAee)" }, angle = 45 },
			inactive_border = "rgba(344158cc)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "master",
		locale = "tr_TR",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,

		active_opacity = 1.0,
		inactive_opacity = 0.96,

		shadow = {
			enabled = true,
			range = 8,
			render_power = 2,
			color = 0x550B1020,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.08,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Motion stays short and quiet. Active border sweeps once on focus, then stops.
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 2.4, bezier = "easeOutQuint" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 3.2, bezier = "easeOutQuint", style = "once" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 94%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 94%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.4, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2.4, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.4, bezier = "easeOutQuint", style = "slidevert" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.config({
	master = {
		new_status = "master",
		orientation = "left",
		allow_small_split = true,
		mfact = 0.7,
		new_on_top = true,
		slave_count_for_center_master = 2,
		new_status = "slave",
		special_scale_factor = 0.5,
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})
