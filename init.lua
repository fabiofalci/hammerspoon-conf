require("shortcuts")
require("raycast")
-- require("window_manager")

---@diagnostic disable-next-line: undefined-global
local hs = hs

-- Reload confirmation
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "R", function()
	hs.reload()
end)
hs.alert.show("Hammerspoon config loaded")
