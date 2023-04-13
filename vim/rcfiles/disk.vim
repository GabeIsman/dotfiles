" Configuration around autosaving, autoreading, etc.

" Save everything on FocusLost (unnamed buffers go silently unsaved)
au FocusLost,BufLeave,BufHidden * silent! wa
" With autoread set, check for changes on disk when editing a file (silence
" missing file errors that slow things down)
au FocusGained,BufEnter * silent! checktime

if !isdirectory($HOME."/.vim/undodir")
  call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undodir=~/.vim/undodir
set undofile
