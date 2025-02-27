require("mock_hs")
local windowManager = require("init")

describe("window_manager_full_screen", function()
	before_each(function()
		hs.window.maxWidth = 36
		hs.window.maxHeight = 13
	end)

	it("should full full screen view", function()
		local frame = windowManager:mmaximize()
		assert.is.equal(frame.x, 0)
		assert.is.equal(frame.y, 0)
		assert.is.equal(frame.w, 36)
		assert.is.equal(frame.h, 13)
	end)

	it("should full full screen when maximize with gap 0", function()
		windowManager:setGaps(0, 0)
		local frame = windowManager:maximize()
		assert.is.equal(frame.x, 0)
		assert.is.equal(frame.y, 0)
		assert.is.equal(frame.w, 36)
		assert.is.equal(frame.h, 13)
	end)

	it("should full screen with gap", function()
		windowManager:setGaps(1, 0)
		local frame = windowManager:maximize()
		assert.is.equal(frame.x, 1)
		assert.is.equal(frame.y, 1)
		assert.is.equal(frame.w, 34)
		assert.is.equal(frame.h, 11)
	end)

	it("should full screen with gap", function()
		windowManager:setGaps(1, 0)
		local frame = windowManager:maximize()
		assert.is.equal(frame.x, 1)
		assert.is.equal(frame.y, 1)
		assert.is.equal(frame.w, 34)
		assert.is.equal(frame.h, 11)
	end)

	describe("window_manager_half", function()
		it("should left half no gap", function()
			windowManager:setGaps(0, 0)
			local left = windowManager:leftHalf()
			local right = windowManager:rightHalf()

			assert.is.equal(left.x, 0)
			assert.is.equal(left.y, 0)
			assert.is.equal(left.w, 18)
			assert.is.equal(left.h, 13)

			assert.is.equal(right.x, 18)
			assert.is.equal(right.y, 0)
			assert.is.equal(right.w, 18)
			assert.is.equal(right.h, 13)
		end)
	end)

	it("should left half with outter gap", function()
		windowManager:setGaps(1, 0)
		local left = windowManager:leftHalf()
		local right = windowManager:rightHalf()

		assert.is.equal(left.x, 1)
		assert.is.equal(left.y, 1)
		assert.is.equal(left.w, 17)
		assert.is.equal(left.h, 11)

		assert.is.equal(right.x, 19)
		assert.is.equal(right.y, 1)
		assert.is.equal(right.w, 17)
		assert.is.equal(right.h, 11)
	end)

	it("should left half with outter gap and inner gap", function()
		windowManager:setGaps(1, 1)
		local left = windowManager:leftHalf()
		local right = windowManager:rightHalf()

		assert.is.equal(left.x, 1)
		assert.is.equal(left.y, 1)
		assert.is.equal(left.w, 17)
		assert.is.equal(left.h, 11)

		assert.is.equal(right.x, 19)
		assert.is.equal(right.y, 1)
		assert.is.equal(right.w, 17)
		assert.is.equal(right.h, 11)
	end)

	it("should left half with outter gap and inner gap of 2", function()
		windowManager:setGaps(2, 2)
		local left = windowManager:leftHalf()
		local right = windowManager:rightHalf()

		assert.is.equal(left.x, 2)
		assert.is.equal(left.y, 2)
		assert.is.equal(left.w, 15)
		assert.is.equal(left.h, 9)

		assert.is.equal(right.x, 19)
		assert.is.equal(right.y, 2)
		assert.is.equal(right.w, 15)
		assert.is.equal(right.h, 9)
	end)
end)
