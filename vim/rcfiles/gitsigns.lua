require("gitsigns").setup({
	on_attach = function(bufnr)
		local gitsigns = require("gitsigns")

		-- Navigation
		vim.keymap.set("n", "]h", function()
			if vim.wo.diff then
				vim.cmd.normal({ "]c", bang = true })
			else
				gitsigns.nav_hunk("next")
			end
		end)

		vim.keymap.set("n", "[h", function()
			if vim.wo.diff then
				vim.cmd.normal({ "[c", bang = true })
			else
				gitsigns.nav_hunk("prev")
			end
		end)

		-- Actions
		vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk)
		vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk)
		vim.keymap.set("v", "<leader>hs", function()
			gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end)
		vim.keymap.set("v", "<leader>hr", function()
			gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end)
		vim.keymap.set("n", "<leader>hS", gitsigns.stage_buffer)
		vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk)
		vim.keymap.set("n", "<leader>hR", gitsigns.reset_buffer)
		vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk)
		vim.keymap.set("n", "<leader>hb", function()
			gitsigns.blame_line({ full = true })
		end)
		vim.keymap.set("n", "<leader>tb", gitsigns.toggle_current_line_blame)
		vim.keymap.set("n", "<leader>hd", gitsigns.diffthis)
		vim.keymap.set("n", "<leader>hD", function()
			gitsigns.diffthis("~")
		end)
		vim.keymap.set("n", "<leader>td", gitsigns.toggle_deleted)

		-- Text object
		vim.keymap.set({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
	end,
})
