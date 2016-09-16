" Open .vimrc and source it
nmap <leader>rc :tabedit $MYVIMRC<cr>

augroup Vim
  autocmd!
  autocmd BufWritePost *.vim source $MYVIMRC
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
