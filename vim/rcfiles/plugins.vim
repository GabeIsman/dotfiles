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

" Completion and snippets
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'SirVer/ultisnips'               " Snippets

" Linting and prettifying
Plug 'dense-analysis/ale'             " Async syntax engines

" Getting around
Plug 'junegunn/fzf.vim'               " Fuzzy-finder
Plug 'mhinz/vim-grepper'              " Enable ack/ag for searching
Plug 'scrooloose/nerdtree'            " Replacement tree explorer

" Tim Pope's wonderful world of Vim
Plug 'tpope/vim-abolish'              " Utilities for refactoring/abbreviating/converting variations of words
Plug 'tpope/vim-commentary'           " Adds easy comment toggling
Plug 'tpope/vim-eunuch'               " Adds some basic unix commands
Plug 'tpope/vim-fugitive'             " Add nice git bindings/interactions
Plug 'tpope/vim-obsession'            " Nicer session handling
Plug 'tpope/vim-projectionist'        " Projectionist for non-rails projects
Plug 'tpope/vim-ragtag'               " Some goodies for better tag manipulation in XML-ish documents
Plug 'tpope/vim-repeat'               " Make . work with vim-surround and other plugins
Plug 'tpope/vim-rhubarb'              " Enable :Gbrowse
Plug 'tpope/vim-surround'             " Handle quotes, parens, tags much more easily
Plug 'tpope/vim-unimpaired'           " A variety of pair-wise key bindings

" Custom motions and objects
Plug 'kana/vim-textobj-user'          " Declarative API for custom text objects
Plug 'chaoren/vim-wordmotion'         " More granular word motions for camel and snake case
Plug 'kana/vim-textobj-line'          " Custom line text object
Plug 'glts/vim-textobj-comment'       " Comments
Plug 'nelstrom/vim-textobj-rubyblock' " Ruby block text objects
Plug 'tommcdo/vim-exchange'           " Exchange regions of text
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Language packs
Plug 'tpope/vim-rails'                " Tons of features for rails projects
Plug 'tpope/vim-bundler'              " Integration with Gemfiles
Plug 'tpope/vim-rake'                 " Nicer file navigation for ruby libraries
Plug 'chrisbra/csv.vim'               " CSV tools
Plug 'lepture/vim-jinja'              " Jinja/Nunjucks syntax highlighting/indenting
Plug 'thoughtbot/vim-rspec'           " Lightweight integration with rspec
Plug 'vim-ruby/vim-ruby'              " Install vim-ruby to get latest version (not bundled version)

" Visual guides
Plug 'nanotech/jellybeans.vim'        " Great colorscheme
Plug 'sainnhe/everforest'
Plug 'mhinz/vim-signify'              " Git gutter signs

" Miscellaneous
Plug 'yssl/QFEnter'                   " Better behavior for opening files from the quickfix window
Plug 'cohama/lexima.vim'              " Auto matching pairs

call plug#end()
