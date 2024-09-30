-- Window movement commands
vim.api.nvim_set_keymap("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- Maximize window function
vim.g.window_is_maximized = 0
function Maximize()
	if vim.g.window_is_maximized == 1 then
		vim.cmd("wincmd =")
		vim.g.window_is_maximized = 0
	else
		vim.cmd("wincmd _")
		vim.cmd("wincmd |")
		vim.g.window_is_maximized = 1
	end
end
vim.api.nvim_set_keymap("n", "<leader>mw", ":lua Maximize()<CR>", { noremap = true, silent = true })

-- Switch to most recently used buffer
vim.api.nvim_set_keymap("n", "<leader><leader>", ":b#<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", ":bprevious<CR>", { noremap = true, silent = true })

-- Repeat last command
vim.api.nvim_set_keymap("n", "<leader>.", "@:", { noremap = true, silent = true })
-- Redraw screen
vim.api.nvim_set_keymap("n", "<leader>rd", ":redraw!<CR>", { noremap = true, silent = true })
-- Quit
vim.api.nvim_set_keymap("n", "<leader>q", ":quit<CR>", { noremap = true, silent = true })
-- Save current buffer
vim.api.nvim_set_keymap("n", "<leader>s", ":w!<CR>", { noremap = true, silent = true })

-- Open project notes
vim.api.nvim_set_keymap("n", "<leader>en", ":tabnew NOTES.md<CR>", { noremap = true, silent = true })

-- Open scratch file with the same extension
vim.api.nvim_set_keymap("n", "<leader>es", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("vsp scratch." .. vim.fn.expand("%:e"))
	end,
})

-- Open a new file in current directory
vim.api.nvim_set_keymap("n", "<leader>ed", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("e " .. vim.fn.expand("%:h") .. "/")
	end,
})

-- Open vertical split with new file in the current directory
vim.api.nvim_set_keymap("n", "<leader>vsp", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("vsp " .. vim.fn.expand("%:h") .. "/")
	end,
})

-- Open horizontal split with new file in the current directory
vim.api.nvim_set_keymap("n", "<leader>sp", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("sp " .. vim.fn.expand("%:h") .. "/")
	end,
})

-- Save a copy of the current file in the current directory
vim.api.nvim_set_keymap("n", "<leader>ec", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("saveas " .. vim.fn.expand("%:h") .. "/")
	end,
})

-- Pull in the contents of a file from the current directory
vim.api.nvim_set_keymap("n", "<leader>rf", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("r " .. vim.fn.expand("%:h") .. "/")
	end,
})

-- Rename the current file
vim.api.nvim_set_keymap("n", "<leader>rn", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd('call feedkeys(":Rename ' .. vim.fn.expand("%:t") .. ')"')
	end,
})

-- Create a file from selected text (for visual mode)
vim.api.nvim_set_keymap("v", "<leader>cf", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("vsp " .. vim.fn.simplify(vim.fn.expand("%:h") .. "/" .. vim.fn.getreg("a")))
	end,
})

-- Projectionist commands
vim.api.nvim_set_keymap("n", "<leader>gt", ":AV<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ct", ":lua CreateSpec()<CR>", { noremap = true, silent = true })

-- Open last buffer in vertical split
vim.api.nvim_set_keymap("n", "<leader>vl", ":vert sb#<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":sp sb#<CR>", { noremap = true, silent = true })

-- Navigating between files with matching basenames
vim.api.nvim_set_keymap("n", "<leader>gr", "", {
	noremap = true,
	silent = true,
	callback = function()
		ConditionalVSplit(vim.fn.expand("%:r:r") .. ".rb")
	end,
})

vim.api.nvim_set_keymap("n", "<leader>gj", "", {
	noremap = true,
	silent = true,
	callback = function()
		ConditionalVSplit(vim.fn.expand("%:r:r") .. ".js")
	end,
})

vim.api.nvim_set_keymap("n", "<leader>gc", "", {
	noremap = true,
	silent = true,
	callback = function()
		ConditionalVSplit(vim.fn.expand("%:r:r") .. ".scss")
	end,
})

vim.api.nvim_set_keymap("n", "<leader>gh", "", {
	noremap = true,
	silent = true,
	callback = function()
		ConditionalVSplit(vim.fn.expand("%:r:r") .. ".html.erb")
	end,
})

vim.api.nvim_set_keymap("n", "<leader>gp", "", {
	noremap = true,
	silent = true,
	callback = function()
		ConditionalVSplit(vim.fn.expand("spec/components/previews/%:t:r:r") .. "_preview.rb")
	end,
})

-- Open file in browser
vim.api.nvim_set_keymap("n", "<leader>ge", "", {
	noremap = true,
	silent = true,
	callback = function()
		vim.cmd("!open https://www.themarshallproject.org/admin/posts/" .. vim.fn.expand("%:t:r") .. "/edit")
	end,
})

-- Function to conditionally open file in vertical split
function ConditionalVSplit(fname)
	if fname == "" then
		return
	end
	local bufnum = vim.fn.bufnr(vim.fn.expand(fname))
	local winnum = vim.fn.bufwinnr(bufnum)
	if winnum ~= -1 then
		vim.cmd(winnum .. "wincmd w")
	else
		vim.cmd("vsplit " .. fname)
	end
end

-- Create spec file based on current file (Rails project assumption)
function CreateSpec()
	local specname = vim.fn.substitute(vim.fn.expand("%:r") .. "_spec.rb", "app", "spec", "")
	ConditionalVSplit(specname)
end

-- Command to split the current window conditionally
vim.api.nvim_create_user_command("Split", function(args)
	ConditionalVSplit(args.args)
end, { nargs = 1 })
