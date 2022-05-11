let mapleader=" " " Map leader key to space

set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/bundle')

Plug 'junegunn/fzf.vim'               " Fuzzy-finder
Plug 'kana/vim-textobj-line'          " Custom line text object
Plug 'kana/vim-textobj-user'          " Declarative API for custom text objects
Plug 'tpope/vim-abolish'              " Utilities for refactoring/abbreviating/converting variations of words
Plug 'tpope/vim-repeat'               " Make . work with vim-surround and other plugins
Plug 'tpope/vim-surround'             " Handle quotes, parens, tags much more easily
Plug 'nanotech/jellybeans.vim'        " Great colorscheme

" Writing plugins
Plug 'preservim/vim-pencil'           " Sane defaults for writing.
Plug 'junegunn/goyo.vim'              " Writeroom style distraction free writing
Plug 'junegunn/limelight.vim'         " Highlight the current paragraph
Plug 'junegunn/seoul256.vim'
Plug 'dbmrq/vim-ditto'                " Highlight repeated words in paragraphs
Plug 'preservim/vim-litecorrect'      " Correct common simple typos
Plug 'preservim/vim-textobj-sentence' " Sentence object
Plug 'preservim/vim-textobj-quote'    " Handling of smart quotes


call plug#end()

source ~/.vim/rcfiles/general.vim
source ~/.vim/rcfiles/shortcuts.vim
source ~/.vim/rcfiles/markdown.vim
source ~/.vim/rcfiles/windows.vim
source ~/.vim/rcfiles/disk.vim
source ~/.vim/rcfiles/colors.vim

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
                            \ | call litecorrect#init()
                            \ | call textobj#quote#init()
                            \ | call textobj#sentence#init()
augroup END

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  let g:relative_number_switching = 0
  colorscheme seoul256
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  let g:relative_number_switching = 1
  Limelight!
  colorscheme jellybeans
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
