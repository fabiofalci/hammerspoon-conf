--- === SimpleWindowManager ===
---
--- A simple window manager Spoon for Hammerspoon
---
--- Download: [https://github.com/fabiofalci/hammerspoon-conf/Spoons/SimpleWindowManager.spoon](https://github.com/fabiofalci/hammerspoon-conf/Spoons/SimpleWindowManager.spoon)

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "Simple Window Manager"
obj.version = "1.0"
obj.author = "fabiofalci"
obj.homepage = "https://github.com/fabiofalci/hammerspoon-conf/Spoons/SimpleWindowManager.spoon"

local outterGap = 10
local innerGap = 10
local doubleOutterGap = outterGap * 2

function obj:bindHotkeys(mapping)
	local def = {
		maximize = hs.fnutils.partial(self.maximize, self),
		mmaximize = hs.fnutils.partial(self.mmaximize, self),
	}
	hs.spoons.bindHotkeysToSpec(def, mapping)
end

function obj:setGaps(outGap, inGap)
	outterGap = outGap
	innerGap = inGap
	doubleOutterGap = outterGap * 2
end

function obj:mmaximize()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x
	f.y = max.y
	f.w = max.w
	f.h = max.h
	win:setFrame(f)

	return f
end

function obj:maximize()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + outterGap
	f.w = max.w - doubleOutterGap
	f.h = max.h - doubleOutterGap
	win:setFrame(f)

	return f
end

function obj:leftHalf()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + outterGap
	f.w = (max.w - doubleOutterGap) // 2 - innerGap // 2
	f.h = max.h - doubleOutterGap
	win:setFrame(f)

	return f
end

return obj
