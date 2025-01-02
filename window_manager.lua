local window_manager_functions = require("window_manager_functions")

---@diagnostic disable-next-line: undefined-global
local hs = hs

hs.window.animationDuration = 0

local outterGap = 10
local outterDoubleGap = outterGap * 2
local innerGap = 10

function logFrame(s, f)
	hs.alert.show("s=" .. s)
	hs.alert.show("x: " .. f.x .. " y: " .. f.y)
	hs.alert.show("w: " .. f.w .. " h: " .. f.h)
	print("s=" .. s)
	print("x: " .. f.x .. " y: " .. f.y)
	print("w: " .. f.w .. " h: " .. f.h)
end

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "G", function()
	window_manager_functions.mmaximize()
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "F", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + outterGap
	f.w = max.w - outterDoubleGap
	f.h = max.h - outterDoubleGap
	win:setFrame(f)

	logFrame("F", f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "H", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + outterGap
	f.w = (max.w - outterDoubleGap) / 2 - innerGap / 2
	f.h = max.h - outterDoubleGap
	win:setFrame(f)

	logFrame("H", f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "L", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = (max.x + outterGap) + (max.w - outterDoubleGap) / 2 + innerGap / 2
	f.y = max.y + outterGap
	f.w = (max.w - outterDoubleGap) / 2 - innerGap / 2
	f.h = max.h - outterDoubleGap
	win:setFrame(f)

	logFrame("L", f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "K", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + outterGap
	f.w = max.w - outterDoubleGap
	f.h = max.h / 2 - innerGap - outterGap
	win:setFrame(f)
end)

hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "J", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	f.x = max.x + outterGap
	f.y = max.y + (max.h / 2) + innerGap
	f.w = max.w - outterDoubleGap
	f.h = max.h / 2 - innerGap - outterGap
	win:setFrame(f)
end)

-- corners

-- hs.hotkey.bind({ "alt" }, ",", function()
-- 	local win = hs.window.focusedWindow()
-- 	local f = win:frame()
-- 	local screen = win:screen()
-- 	local max = screen:frame()
--
-- 	f.x = max.x + gap
-- 	f.y = max.y + (max.h / 2) + gap
-- 	f.w = max.w / 2 - doubleGap
-- 	f.h = max.h / 2 - doubleGap
-- 	win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({ "alt" }, ".", function()
-- 	local win = hs.window.focusedWindow()
-- 	local f = win:frame()
-- 	local screen = win:screen()
-- 	local max = screen:frame()
--
-- 	f.x = max.x + (max.w / 2) + gap
-- 	f.y = max.y + (max.h / 2) + gap
-- 	f.w = max.w / 2 - doubleGap
-- 	f.h = max.h / 2 - doubleGap
-- 	win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({ "alt", "shift" }, ",", function()
-- 	local win = hs.window.focusedWindow()
-- 	local f = win:frame()
-- 	local screen = win:screen()
-- 	local max = screen:frame()
--
-- 	f.x = max.x + gap
-- 	f.y = max.y + gap
-- 	f.w = max.w / 2 - doubleGap
-- 	f.h = max.h / 2 - doubleGap
-- 	win:setFrame(f)
-- end)
--
-- hs.hotkey.bind({ "alt", "shift" }, ".", function()
-- 	local win = hs.window.focusedWindow()
-- 	local f = win:frame()
-- 	local screen = win:screen()
-- 	local max = screen:frame()
--
-- 	f.x = max.x + (max.w / 2) + gap
-- 	f.y = max.y + gap
-- 	f.w = max.w / 2 - doubleGap
-- 	f.h = max.h / 2 - doubleGap
-- 	win:setFrame(f)
-- end)
