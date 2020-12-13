" Configuration specific to python projects

augroup Python
  autocmd!
  autocmd BufEnter *.html noremap <leader>dj :set filetype=htmldjango<cr>
augroup END
