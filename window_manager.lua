---@diagnostic disable-next-line: undefined-global
local hs = hs

hs.window.animationDuration = 0

local gap = 8
local doubleGap = gap * 2

hs.hotkey.bind({ "alt" }, "F", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w - doubleGap
	f.h = max.h - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, "H", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w / 2 - gap
	f.h = max.h - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, "L", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2) + gap
	f.y = max.y + gap
	f.w = max.w / 2 - doubleGap
	f.h = max.h - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, "K", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w - doubleGap
	f.h = max.h / 2 - gap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, "J", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + (max.h / 2) + gap
	f.w = max.w - doubleGap
	f.h = max.h / 2 - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt" }, ",", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + (max.h / 2) + gap
	f.w = max.w / 2 - doubleGap
	f.h = max.h / 2 - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt" }, ".", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2) + gap
	f.y = max.y + (max.h / 2) + gap
	f.w = max.w / 2 - doubleGap
	f.h = max.h / 2 - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, ",", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + gap
	f.y = max.y + gap
	f.w = max.w / 2 - doubleGap
	f.h = max.h / 2 - doubleGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "alt", "shift" }, ".", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + (max.w / 2) + gap
	f.y = max.y + gap
	f.w = max.w / 2 - doubleGap
	f.h = max.h / 2 - doubleGap
	win:setFrame(f)
end)
