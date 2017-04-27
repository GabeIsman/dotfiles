" Settings specific to javascript files

augroup jspath
  autocmd!
  autocmd FileType js setlocal suffixesadd+=.js
  autocmd FileType js setlocal path+=.
augroup END
