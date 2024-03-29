local telescope = require("telescope");
telescope.setup({
  defaults = {
    -- Default configuration for telescope goes here:
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
        ["<c-j>"] = {
          require('telescope.actions').move_selection_next, type = "action",
          opts = { nowait = true, silent = true }
        },
        ["<c-k>"] = {
          require('telescope.actions').move_selection_previous, type = "action",
          opts = { nowait = true, silent = true }
        },
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
})

    telescope.load_extension("fzf")

-- What my fingers remember
vim.keymap.set("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files" })
vim.keymap.set('n', '<leader>i', function() telescope.builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end)

-- More logical maps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files" })
vim.keymap.set('n', '<leader>f.', function() telescope.builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end)
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "find recently opened files" })
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope live_grep<cr>", { desc = "live project grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "fuzzy find open buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "poke through help tags" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "grep for word under cursor" })
vim.keymap.set("v", "<leader>ft", "<cmd>Telescope treesitter<cr>", { desc = "grep for visual selection" })
