-- Create an augroup for JavaScript-specific settings
local jspath_group = vim.api.nvim_create_augroup("jspath", { clear = true })

-- Set suffixesadd, path, and includeexpr for JavaScript, JSX, and Svelte files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "javascript", "javascript.jsx", "svelte" },
	group = jspath_group,
	callback = function()
		vim.opt_local.suffixesadd:append({ ".js", ".svelte" })
		vim.opt_local.path:append({ "app/javascript", "app", "src", "node_modules", "." })
		vim.opt_local.includeexpr = "substitute(v:fname, '^\\$', '', '')"
	end,
})

-- Uncomment the following if ALE is installed and you want to use ALEGoToDefinition

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "javascript", "javascript.jsx", "svelte" },
--   group = jspath_group,
--   callback = function()
--     vim.api.nvim_buf_set_keymap(0, 'n', '<C-]>', ':ALEGoToDefinition<CR>', { noremap = true, silent = true })
--     vim.api.nvim_buf_set_keymap(0, 'n', 'gf', ':ALEGoToDefinition<CR>', { noremap = true, silent = true })
--   end,
-- })
