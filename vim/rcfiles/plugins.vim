" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/bundle')

" Linting and language servers
Plug 'stevearc/conform.nvim'          " Fix on save
Plug 'williamboman/mason.nvim'        " Package manager for linters and LSPs
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim' " also a telescope dependency
Plug 'petertriho/cmp-git'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" Getting around
Plug 'mhinz/vim-grepper'              " Enable ack/ag for searching
Plug 'nvim-tree/nvim-tree.lua'        " Replacement tree explorer
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-live-grep-args.nvim', { 'do': 'make' }
Plug 'stevearc/oil.nvim'              " File system editing
Plug 'stevearc/quicker.nvim'          " More powerful quickfix

" Git
Plug 'tpope/vim-fugitive'             " Add nice git bindings/interactions
Plug 'rbong/vim-flog'                 " Branch browsing
Plug 'tpope/vim-rhubarb'              " Enable :Gbrowse for Github

" Tim Pope's wonderful world of Vim
Plug 'tpope/vim-abolish'              " Utilities for refactoring/abbreviating/converting variations of words
Plug 'tpope/vim-commentary'           " Adds easy comment toggling
Plug 'tpope/vim-eunuch'               " Adds some basic unix commands
Plug 'tpope/vim-obsession'            " Nicer session handling
Plug 'tpope/vim-projectionist'        " Projectionist for non-rails projects
Plug 'tpope/vim-ragtag'               " Some goodies for better tag manipulation in XML-ish documents
Plug 'tpope/vim-repeat'               " Make . work with vim-surround and other plugins
Plug 'tpope/vim-surround'             " Handle quotes, parens, tags much more easily
Plug 'tpope/vim-unimpaired'           " A variety of pair-wise key bindings

" Custom motions and objects
Plug 'kana/vim-textobj-user'          " Declarative API for custom text objects
"Plug 'chaoren/vim-wordmotion'         " More granular word motions for camel and snake case
Plug 'kana/vim-textobj-line'          " Custom line text object
Plug 'glts/vim-textobj-comment'       " Comments
Plug 'nelstrom/vim-textobj-rubyblock' " Ruby block text objects
Plug 'tommcdo/vim-exchange'           " Exchange regions of text
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects' " Text objects based on treesitter parsing

" Mini tools
Plug 'echasnovski/mini.nvim'

" Language packs
Plug 'tpope/vim-rails'                " Tons of features for rails projects
Plug 'tpope/vim-bundler'              " Integration with Gemfiles
Plug 'tpope/vim-rake'                 " Nicer file navigation for ruby libraries
Plug 'chrisbra/csv.vim'               " CSV tools
Plug 'lepture/vim-jinja'              " Jinja/Nunjucks syntax highlighting/indenting
Plug 'thoughtbot/vim-rspec'           " Lightweight integration with rspec
Plug 'vim-ruby/vim-ruby'              " Install vim-ruby to get latest version (not bundled version)
Plug 'nvim-treesitter/nvim-treesitter'

" Visual guides
Plug 'nanotech/jellybeans.vim'        " Great colorscheme
Plug 'sainnhe/everforest'
Plug 'lewis6991/gitsigns.nvim'        " Git gutter

" UI modifications
Plug 'stevearc/dressing.nvim'         " Better prompt and select UI using telescope

" Miscellaneous
Plug 'yssl/QFEnter'                   " Better behavior for opening files from the quickfix window
Plug 'cohama/lexima.vim'              " Auto matching pairs
Plug 'vim-test/vim-test'              " Launch tests

Plug 'github/copilot.vim'

call plug#end()
