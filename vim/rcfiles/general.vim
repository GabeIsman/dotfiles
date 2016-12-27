set nocompatible              " be iMproved, required for Vundle
syntax on " enable syntax highlighting
set tabstop=2 " spaces per tab visually
set softtabstop=2 " spaces per tab when editing
set sw=2 " Use 2 spaces when indenting visual blocks
set expandtab  " tabs are spaces
set number  " show line numbers
set showcmd " show command bar
set cursorline " highlight current line
filetype plugin indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set showmatch " highlight matching brackets
set incsearch " search as we type
set hlsearch " highlight matches
set clipboard=unnamed " Use the system clipboard by default for yanking/pasting
set backspace=indent,eol,start " Make backspace delete things not just inserted
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
set autowriteall   " Automatically write buffers when opening a new one (various commands)
set autoread       " Automatically read buffers in when changed on disk
set splitbelow     " Make the new vertical split the bottom one
set splitright     " Make the new vertical split the right one
set showcmd        " Show incomplete commands
set laststatus=2   " Always display the status line
set scrolloff=1    " Keep one line below/above cursor
set wrap           " Wrap lines that are bigger than the screen
set linebreak      " Break visual wraps at reasonable breakpoints, not at the last visible character
set nolist         " Don't visually indicate the end of a line

" Change the cursor shape based on mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" Tell vitality not to bother, since we just did it.
let g:vitality_fix_cursor = 0

" move by visual lines rather than machine lines
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" jk and jj are both escape
inoremap jk <esc>
inoremap jj <esc>

" Map control movements to arrow keys in insert
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-k> <up>

" remove search highlights
nnoremap <C-l> :nohlsearch<CR>

" Write current buffer
nmap <leader>s :w<CR>

colorscheme molokai

