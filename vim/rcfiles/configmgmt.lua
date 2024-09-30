-- Open init.lua and source it
vim.api.nvim_set_keymap("n", "<leader>rc", ":tabedit $MYVIMRC<CR>", { noremap = true, silent = true })

-- Create an augroup for the autocommands
local vim_config_group = vim.api.nvim_create_augroup("VimConfig", { clear = true })

-- Autocommand to source the config after saving either a .vim file or $MYVIMRC
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "*.vim", "$MYVIMRC", "*.lua" },
	command = "source $MYVIMRC",
	group = vim_config_group,
})
