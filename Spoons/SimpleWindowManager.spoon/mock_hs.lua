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
								w = hs.window.maxWidth or 300,
								h = hs.window.maxHeight,
							}
						end,
					}
				end,
			}
		end,
		maxWidth = 300,
		maxHeight = 351,
	},
}
