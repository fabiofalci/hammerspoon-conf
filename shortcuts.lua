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

hs.hotkey.bind({ "option" }, "F3", function()
	hs.execute("~/.config/dotFiles-private/bash/disable-pihole.sh")
	hs.alert.show("Disable pihole: success")
end)

-- Define actions separately with a unique ID
local actions = {
	["shutdown"] = function()
		hs.execute("shutdown now", true)
	end,
	["lock"] = function()
		hs.caffeinate.lockScreen()
	end,
	["open_music"] = function()
		hs.application.launchOrFocus("Music")
	end,
	["disable_pihole"] = function()
		hs.execute("~/.config/dotFiles-private/bash/disable-pihole.sh")
	end,
	["plexamp"] = function()
		hs.application.launchOrFocus("Plexamp")
	end,
}

-- Define the choices table, linking to actions by ID
local choices = {
	{ text = "Shutdown Computer", subText = "Shuts down the system", id = "shutdown" },
	{ text = "Lock Computer", subText = "Locks the screen", id = "lock" },
	{ text = "Open Music Player", subText = "Opens the default music player", id = "open_music" },
	{ text = "Disable pihole", subText = "Disables pihole for 5 min", id = "disable_pihole" },
	{ text = "Plexamp", subText = "Open Plexamp", id = "plexamp" },
}

-- Create the chooser
local chooser = hs.chooser.new(function(choice)
	if not choice then
		print("No choice selected.")
		return
	end

	-- Get the action associated with the selected choice
	local action = actions[choice.id]
	if action then
		action()
	else
		print("No action found for the selected choice.")
	end
end)

-- Set the list of options for the chooser
chooser:choices(choices)

-- Shortcut to open the chooser
hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "D", function()
	chooser:show()
end)
