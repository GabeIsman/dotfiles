augroup mjml
  autocmd!
  autocmd BufNewFile,BufReadPost *.mjml set filetype=html
augroup END

let g:syntastic_ignore_files=['.*\.mjml']
