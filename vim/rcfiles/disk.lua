-- Autosave on FocusLost, BufLeave, BufHidden
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "BufHidden" }, {
  pattern = "*",
  command = "silent! wa"
})

-- Autoread: Check for changes on disk when the editor gains focus
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "silent! checktime"
})

-- Create undodir if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p", 0700)
end

-- Set the undodir and enable undofile
vim.opt.undodir = undodir
vim.opt.undofile = true
