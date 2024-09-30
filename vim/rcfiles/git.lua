-- Set updatetime
vim.opt.updatetime = 100

-- Git leader mappings
vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiff<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>rm", ":GDelete!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>gl", ":GBrowse<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gl", ":GBrowse<CR>", { noremap = true, silent = true })

-- Open a quickfix window with the files from the specified diff
vim.api.nvim_create_user_command("Gqf", function(args)
	local diff_files = vim.fn.systemlist("git diff --name-only " .. args.args)
	local qflist = vim.tbl_map(function(filename)
		return { filename = filename, lnum = 1 }
	end, diff_files)
	vim.fn.setqflist(qflist)
end, { nargs = "?", bar = true })
