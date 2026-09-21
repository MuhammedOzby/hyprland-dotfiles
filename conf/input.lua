
---------------
---- INPUT ----
---------------

hl.config({
	input = {
		kb_layout = "tr",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		}
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "asus-keyboard",
	kb_layout = "tr",
	numlock_by_default = true,
})

hl.device({
    name = "waveshare-ws170120",
    output = "HDMI-A-1",
	transform = 2
})