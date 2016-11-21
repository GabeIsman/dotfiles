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

" Replace current word (not necessarily word-bounded) in whole file, with
" confirm
nnoremap <leader>ra :%s/<c-r><c-w>//gc<left><left><left>
" Replace current bounded-word in whole file, with confirm
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//gc<left><left><left>
" Replace bounded word on line
nnoremap <leader>rl :s/\<<c-r><c-w>\>//g<left><left>
" Replace the rest of the word on the whole line
nnoremap <leader>re ye:s/<c-r>"//g<left><left>
" Replace the visual selection on the current line
vnoremap <leader>rv y:s/<c-r>"//g<left><left>

