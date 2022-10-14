if !has('nvim')
  set nocompatible              " be iMproved, required for Vundle
  syntax on " enable syntax highlighting
  set autoread       " Automatically read buffers in when changed on disk
  set backspace=indent,eol,start " Make backspace delete things not just inserted
  set incsearch " search as we type
  set hlsearch " highlight matches
  set synmaxcol=512  " Don't try to syntax highlight long single lines
  " This goes a long way to alleviating the performance with ruby syntax
  set regexpengine=1
  filetype plugin indent on " load filetype-specific indent files
  set laststatus=2   " Always display the status line
  set wildmenu " visual autocomplete for command menu
  set showcmd " show command bar

  runtime macros/matchit.vim

  " Change the cursor shape based on mode
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_SR = "\<Esc>]50;CursorShape=2\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

set autowriteall   " Automatically write buffers when opening a new one (various commands)
set clipboard=unnamed " Use the system clipboard by default for yanking/pasting
set cursorline " highlight current line
set expandtab  " tabs are spaces
" set lazyredraw " redraw only when needed
set linebreak      " Break visual wraps at reasonable breakpoints, not at the last visible character
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set number  " show line numbers
set scrolloff=1    " Keep one line below/above cursor
set showmatch " highlight matching brackets
set softtabstop=2 " spaces per tab when editing
set splitbelow     " Make the new vertical split the bottom one
set splitright     " Make the new vertical split the right one
set sw=2 " Use 2 spaces when indenting visual blocks
set tabstop=2 " spaces per tab visually
set wrap           " Wrap lines that are bigger than the screen
set hidden

" Tell vitality not to bother, since we just did it.
let g:vitality_fix_cursor = 0
