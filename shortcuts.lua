---@diagnostic disable-next-line: undefined-global
local hs = hs

hs.hotkey.bind({ "option" }, "F1", function()
	local t = hs.task.new("/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", nil, function()
		return false
	end, { "--profile-directory=Default" })
	t:start()
end)
