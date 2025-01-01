require("shortcuts")
require("raycast")
-- require("window_manager")

---@diagnostic disable-next-line: undefined-global
local hs = hs

caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
	if state then
		caffeine:setTitle("A")
	else
		caffeine:setTitle("S")
	end
end

function caffeineClicked()
	setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
	caffeine:setClickCallback(caffeineClicked)
	setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- Reload confirmation
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "R", function()
	hs.reload()
end)
hs.alert.show("Hammerspoon config loaded")
