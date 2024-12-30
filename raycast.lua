---@diagnostic disable-next-line: undefined-global
local hs = hs

-- List of apps to target
local targetApps = {
	"Google Chrome",
	"Alacritty",
	"Intellij IDEA",
	"Firefox",
}

-- maximize when opening
local function triggerRaycastShortcut()
	hs.eventtap.keyStroke({ "option" }, "f")
end

local function handleNewWindow(window)
	if window then
		local appName = window:application():name()
		if hs.fnutils.contains(targetApps, appName) then
			triggerRaycastShortcut()
		end
	end
end

local windowFilter = hs.window.filter.new(targetApps)
windowFilter:subscribe(hs.window.filter.windowCreated, function(window)
	handleNewWindow(window)
end)
