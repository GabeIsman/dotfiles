" Settings for javascript file

augroup jspath
  autocmd!
  autocmd FileType javascript,javascript.jsx setlocal suffixesadd+=.js
  autocmd FileType javascript,javascript.jsx setlocal path+=app/javascript,app,node_modules,,.
  autocmd FileType javascript,javascript.jsx setlocal includeexpr=substitute(v:fname,'^\$','','')
  autocmd FileType javascript,javascript.jsx nnoremap <buffer> <C-]> :YcmCompleter GoTo<CR>
  autocmd FileType javascript,javascript.jsx nnoremap <buffer> gf :YcmCompleter GoTo<CR>
  autocmd FileType javascript,javascript.jsx let b:ycm_hover = {
        \ 'command': 'GetDoc',
        \ 'syntax': &filetype
        \ }

augroup END
