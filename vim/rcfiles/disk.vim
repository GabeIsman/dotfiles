" Configuration around autosaving, autoreading, etc.

" Trim whitespace on save
autocmd BufWritePre * StripWhitespace

" Save everything on FocusLost (unnamed buffers go silently unsaved)
au FocusLost,BufLeave,BufHidden * silent! wa
" With autoread set, check for changes on disk when editing a file
au FocusGained,BufEnter * checktime

