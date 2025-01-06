-- HelloWorld Spoon Tests
require("hs.notify")

-- Create test suite
TestHelloWorld = {}

function TestHelloWorld:setUp()
	self.windowManager = hs.loadSpoon("SimpleWindowManager")
end

function TestHelloWorld:tearDown()
	self.windowManager = nil
end

function TestHelloWorld:testShow()
	-- Call the show method
	local frame = self.windowManager:maximize()
	assertTrue(frame ~= nil)
	-- assertEquals(notification:title(), "HelloWorld Spoon")
	-- assertEquals(notification:informativeText(), "Hello, World!")
end

-- function TestHelloWorld:testBindHotkeys()
--     -- Test that binding hotkeys doesn't error
--     local mapping = {
--         show = {{"cmd", "alt"}, "H"}
--     }
--
--     -- This should not throw an error
--     self.helloWorld:bindHotkeys(mapping)
--
--     -- Clean up any bound hotkeys
--     hs.hotkey.deleteAll()
-- end

-- Run the tests
TestHelloWorld:run()
