-- Disable Copilot by default but allow requesting a suggestion
vim.g.copilot_enabled = false

-- Prevent Copilot from using the Tab key
vim.g.copilot_no_tab_map = true

-- Map <C-f> to accept a Copilot suggestion
vim.api.nvim_set_keymap('i', '<C-f>', 'copilot#Accept("<C-f>")', { expr = true, silent = true, noremap = true })

-- Map <C-g> to request a Copilot suggestion
vim.api.nvim_set_keymap('i', '<C-g>', '<Plug>(copilot-suggest)', { noremap = true })

-- Highlight Copilot suggestions
vim.api.nvim_set_hl(0, 'CopilotSuggestion', { fg = '#555555', ctermfg = 8 })
