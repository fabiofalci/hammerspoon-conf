local window_manager_functions = {}

---@diagnostic disable-next-line: undefined-global
local hs = hs

local outterGap = 10
local outterDoubleGap = outterGap * 2
local innerGap = 10

function window_manager_functions.mmaximize()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()

	print(f)
	print(screen)
	print(max)

	f.x = max.x
	f.y = max.y
	f.w = max.w
	f.h = max.h
	win:setFrame(f)

	return f
end

return window_manager_functions
