-- Treat <li> and <p> tags like block tags
vim.g.html_indent_tags = "li\\|p"

-- Source tags are self-closing, don't indent them
vim.g.html_indent_autotags = "source"

-- Format HTML (with embedded ruby support)
vim.api.nvim_create_user_command("HTMLFormat", function()
	vim.cmd("%!htmlbeautifier")
end, {})

-- Turn on ragtag globally (useful for .svelte, .jsx, etc.)
vim.g.ragtag_global_maps = 1

-- Map <C-e> to ragtag's 'close tag' in insert mode
vim.api.nvim_set_keymap("i", "<C-e>", "<C-x>/", { noremap = true, silent = true })

-- Specific mapping for opening diff files in HTML filetype
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html",
	callback = function()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<leader>gd",
			':call ConditionalVSplit(expand("posts/raw_diffs/%:t:r") . ".diff")<CR>',
			{ noremap = true, silent = true }
		)
	end,
})
