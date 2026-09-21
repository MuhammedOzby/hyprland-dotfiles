------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "DP-1",
	mode = "3440x1440@99.98",
	position = "0x0",
	scale = "1",
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1024x600@59.85Hz",
	position = "0x1440",
	scale = "1",
	transform = 2,
})
