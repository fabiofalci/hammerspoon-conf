---@diagnostic disable-next-line: undefined-global
local hs = hs

hs.hotkey.bind({ "option" }, "F1", function()
	local t = hs.task.new("/Applications/Google Chrome.app/Contents/MacOS/Google Chrome", nil, function()
		return false
	end, { "--profile-directory=Default" })
	t:start()
end)

hs.hotkey.bind({ "option" }, "F2", function()
	local folder = hs.dialog.chooseFileOrFolder("Select git folder", "/Users/fabio/p/", false, true, false)
	if folder and folder["1"] then
		print('alacritty -e sh -c "lazygit -p ' .. folder["1"] .. '"')
		hs.execute('alacritty -e sh -c "lazygit -p ' .. folder["1"] .. '"', true)
	end
end)
