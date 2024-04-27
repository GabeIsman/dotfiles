local telescope = require("telescope");
local builtin = require("telescope.builtin")


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
    live_grep_args = {
      auto_quoting = true, -- enable/disable auto-quoting
      -- define mappings, e.g.
      mappings = { -- extend mappings
        i = {
          ["<C-a>"] = require("telescope-live-grep-args.actions").quote_prompt(),
          ["<C-i>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob *" }),
          ["<C-t>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " -t" }),
          ["<C-s>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob *spec*" }),
        },
      }
      -- please take a look at the readme of the extension you want to configure
    }
  }

})

telescope.load_extension("fzf")

-- What my fingers remember
vim.keymap.set("n", "<leader>o", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files" })
vim.keymap.set('n', '<leader>i', function() builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end)

-- More logical maps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files" })
vim.keymap.set('n', '<leader>f.', function() builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end)
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "find recently opened files" })
vim.keymap.set("n", "<leader>fp", function() telescope.extensions.live_grep_args.live_grep_args() end, { desc = "live project grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "fuzzy find open buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "poke through help tags" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "grep for word under cursor" })
vim.keymap.set("v", "<leader>ft", "<cmd>Telescope treesitter<cr>", { desc = "grep for visual selection" })
