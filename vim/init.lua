-- Set runtimepath
vim.opt.runtimepath:prepend("~/.vim")
vim.opt.runtimepath:append("~/.vim/after")
package.path = package.path .. ";" .. vim.fn.expand("~/.vim/?.lua")

-- Set packpath to match runtimepath
vim.opt.packpath = vim.opt.runtimepath:get()
--
-- Basic setup, including mapleader
vim.cmd.source("~/.vim/rcfiles/general.vim")

-- Source all the focused config files
vim.cmd.source("~/.vim/rcfiles/windows.vim")
vim.cmd.source("~/.vim/rcfiles/markdown.vim")
vim.cmd.source("~/.vim/rcfiles/mjml.vim")
vim.cmd.source("~/.vim/rcfiles/python.vim")
vim.cmd.source("~/.vim/rcfiles/rails.vim")
vim.cmd.source("~/.vim/rcfiles/ruby.vim")
vim.cmd.source("~/.vim/rcfiles/search.vim")
vim.cmd.source("~/.vim/rcfiles/shortcuts.vim")
vim.cmd.source("~/.vim/rcfiles/snippets.vim")
vim.cmd.source("~/.vim/rcfiles/spelling.vim")
vim.cmd.source("~/.vim/rcfiles/statusline.vim")
vim.cmd.source("~/.vim/rcfiles/surround.vim")
vim.cmd.source("~/.vim/rcfiles/test.vim")

-- Source lua config files
require("rcfiles.configmgmt")
require("rcfiles.disk")
require("rcfiles.copilot")
require("rcfiles.git")
require("rcfiles.abbreviations")
require("rcfiles.html")
require("rcfiles.javascript")
require("rcfiles.json")
require("rcfiles.virtualtext")
require("rcfiles.buffers")

-- Load the plugins (Vimscript)
vim.cmd.source("~/.vim/rcfiles/plugins.vim")

-- Source plugin-related Lua config files
require("rcfiles.colors")
require("rcfiles.completion")
require("rcfiles.treesitter")
require("rcfiles.treesitter-textobjects")
require("rcfiles.tree")
require("rcfiles.telescope")
require("rcfiles.lsp")
require("rcfiles.gitsigns")
require("rcfiles.conform")
require("rcfiles.mini")
