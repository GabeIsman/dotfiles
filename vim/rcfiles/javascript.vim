" Settings for javascript file

augroup jspath
  autocmd!
  autocmd FileType javascript,javascript.jsx setlocal suffixesadd+=.js
augroup END

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec='$(npm bin)/eslint'
