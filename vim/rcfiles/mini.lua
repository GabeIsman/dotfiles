require("mini.ai").setup({})
require("mini.operators").setup({
	-- Evaluate text and replace with output
	evaluate = {
		prefix = "g=",
	},

	-- Exchange text regions, don't want this
	exchange = {
		prefix = "",
	},

	-- Multiply (duplicate) text
	multiply = {
		prefix = "gm",
	},

	-- Replace text with register
	replace = {
		prefix = "sp",
	},

	-- Sort text
	sort = {
		prefix = "go",
	},
})

-- local visits = require("mini.visits")
-- visits.setup({
-- 	-- How visit tracking is done
-- 	track = {
-- 		-- Track buffers that get written only
-- 		event = "BufEnter",

-- 		-- Debounce delay after event to register a visit
-- 		delay = 1000,
-- 	},
-- })
-- vim.keymap.set("n", "<c-n>", function()
-- 	visits.iterate_paths("forward")
-- end)
-- vim.keymap.set("n", "<c-p>", function()
-- 	visits.iterate_paths("backward")
-- end)
