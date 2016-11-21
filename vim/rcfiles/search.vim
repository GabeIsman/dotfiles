" Use ag instead ack if it's available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set ignorecase
set smartcase

nnoremap gr :Ack <cword><cr>
nnoremap gR :Ack '\b<cword>\b' *<CR>

nnoremap <leader>fp :Ack<space>
vnoremap <leader>fv y:Ack<space><c-r>"<cr>

nnoremap <leader>ra :%s/<c-r><c-w>//gc<left><left><left>
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//g<left><left>
nnoremap <leader>rl :s/\<<c-r><c-w>\>//g<left><left>
nnoremap <leader>re ye:s/<c-r>"//g<left><left>
vnoremap <leader>rv y:s/<c-r>"//g<left><left>

