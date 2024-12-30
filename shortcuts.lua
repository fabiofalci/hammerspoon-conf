---@diagnostic disable-next-line: undefined-global
local hs = hs

-- chrome default profile shortcut

local function chromeDefaultProfile()
	local t = hs.task.new("/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", nil, function()
		return false
	end, { "--profile-directory=Default" })
	t:start()
end

hs.hotkey.bind({ "option" }, "F1", function()
	chromeDefaultProfile()
end)
