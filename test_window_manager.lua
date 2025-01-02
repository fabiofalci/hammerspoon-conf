require("mock_hs")
local window_manager_functions = require("window_manager_functions")

describe("window_manager_full_screen", function()
	it("should full full screen view", function()
		local frame = window_manager_functions.mmaximize()
		assert.is.equal(frame.x, 0)
		assert.is.equal(frame.y, 0)
		assert.is.equal(frame.w, 300)
		assert.is.equal(frame.h, 350)
	end)

	it("should full full screen when maximize with gap 0", function()
		window_manager_functions.setGaps(0, 0)
		local frame = window_manager_functions.maximize()
		assert.is.equal(frame.x, 0)
		assert.is.equal(frame.y, 0)
		assert.is.equal(frame.w, 300)
		assert.is.equal(frame.h, 350)
	end)

	it("should full screen with gap", function()
		window_manager_functions.setGaps(1, 0)
		local frame = window_manager_functions.maximize()
		assert.is.equal(frame.x, 1)
		assert.is.equal(frame.y, 1)
		assert.is.equal(frame.w, 298)
		assert.is.equal(frame.h, 348)
	end)

	it("should full screen with gap", function()
		window_manager_functions.setGaps(2, 0)
		local frame = window_manager_functions.maximize()
		assert.is.equal(frame.x, 2)
		assert.is.equal(frame.y, 2)
		assert.is.equal(frame.w, 296)
		assert.is.equal(frame.h, 346)
	end)
end)

describe("window_manager_half", function()
	it("should lef half no gap", function()
		window_manager_functions.setGaps(0, 0)
		local frame = window_manager_functions.leftHalf()
		assert.is.equal(frame.x, 0)
		assert.is.equal(frame.y, 0)
		assert.is.equal(frame.w, 150)
		assert.is.equal(frame.h, 350)
	end)
end)
