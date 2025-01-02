require("mock_hs")
local window_manager_functions = require("window_manager_functions")

describe("window_manager_full_screen", function()
	it("should full screen view", function()
		local frame = window_manager_functions.mmaximize()
		assert.is.equal(frame.x, 100)
		assert.is.equal(frame.y, 200)
		assert.is.equal(frame.w, 300)
		assert.is.equal(frame.h, 350)
	end)
end)