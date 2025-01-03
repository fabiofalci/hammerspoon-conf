--- === HelloWorld ===
---
--- A simple Hello World Spoon for Hammerspoon
---
--- Download: [https://github.com/your-username/HelloWorld.spoon](https://github.com/your-username/HelloWorld.spoon)

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "HelloWorld"
obj.version = "1.0"
obj.author = "Your Name"
obj.homepage = "https://github.com/your-username/HelloWorld.spoon"
obj.license = "MIT - https://opensource.org/licenses/MIT"

--- HelloWorld:bindHotkeys(mapping)
--- Method
--- Binds hotkeys for HelloWorld
---
--- Parameters:
---  * mapping - A table containing hotkey objifier/key details for the following items:
---   * show - Show hello world notification
function obj:bindHotkeys(mapping)
	local def = {
		show = hs.fnutils.partial(self.show, self),
	}
	hs.spoons.bindHotkeysToSpec(def, mapping)
end

--- HelloWorld:show()
--- Method
--- Shows a hello world notification
---
--- Returns:
---  * None
function obj:show()
	hs.notify
		.new({
			title = "HelloWorld Spoon",
			informativeText = "Hello, World!",
		})
		:send()
	print("test")
end

return obj
