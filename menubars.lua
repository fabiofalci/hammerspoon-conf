menubar = hs.menubar.new()

local function executeShellCommand(script)
	local output, status = hs.execute(script, true)
	if status then
		hs.alert.show("Success:\n" .. output)
		return true
	else
		hs.alert.show("Failed to change cluster")
		return false
	end
end

local function menuClicked(mods, items)
	if items then
		if items.title == "dev" then
			if executeShellCommand("~/.config/dotFiles-private/clusters/dev.sh") then
				menubar:setTitle("k8s:dev")
			end
		elseif items.title == "prod" then
			if executeShellCommand("~/.config/dotFiles-private/clusters/prod.sh") then
				menubar:setTitle("k8s:prod")
			end
		elseif items.title == "wf-dev" then
			if executeShellCommand("~/.config/dotFiles-private/clusters/wf-dev.sh") then
				menubar:setTitle("k8s:wf-dev")
			end
		elseif items.title == "wf-uat" then
			if executeShellCommand("~/.config/dotFiles-private/clusters/wf-uat.sh") then
				menubar:setTitle("k8s:wf-uat")
			end
		end
	end
end

local menuItems = {
	{ title = "dev", fn = menuClicked },
	{ title = "prod", fn = menuClicked },
	{ title = "wf-dev", fn = menuClicked },
	{ title = "wf-uat", fn = menuClicked },
}

menubar:setMenu(menuItems)

menubar:setTitle("k8s")
