local window_manager_functions = {}

---@diagnostic disable-next-line: undefined-global
local hs = hs

local outterGap = 10
local innerGap = 10

local doubleOutterGap = outterGap * 2

function window_manager_functions.setGaps(outGap, inGap)
	outterGap = outGap
	innerGap = inGap
	doubleOutterGap = outterGap * 2
end

function window_manager_functions.mmaximize()
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

function window_manager_functions.maximize()
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

function window_manager_functions.leftHalf()
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

return window_manager_functions
