---@diagnostic disable: unused-local
hs = {
	window = {

		focusedWindow = function()
			return {
				setFrame = function(self, frame)
					hs.window.lastFrame = frame
				end,
				frame = function(self)
					return {
						x = 0,
						y = 0,
						w = 0,
						h = 0,
					}
				end,
				screen = function(self)
					return {
						frame = function(s)
							return {
								x = 0,
								y = 0,
								w = 300,
								h = 350,
							}
						end,
					}
				end,
			}
		end,
		lastFrame = nil,
	},
}
