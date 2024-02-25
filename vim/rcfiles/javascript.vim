" Settings for javascript file

augroup jspath
  autocmd!
  autocmd FileType javascript,javascript.jsx,svelte setlocal suffixesadd+=.js,.svelte
  autocmd FileType javascript,javascript.jsx,svelte setlocal path+=app/javascript,app,src,node_modules,,.
  autocmd FileType javascript,javascript.jsx,svelte setlocal includeexpr=substitute(v:fname,'^\$','','')
  "autocmd FileType javascript,javascript.jsx,svelte nnoremap <buffer> <C-]> :ALEGoToDefinition<CR>
  "autocmd FileType javascript,javascript.jsx,svelte nnoremap <buffer> gf :ALEGoToDefinition<CR>
augroup END
