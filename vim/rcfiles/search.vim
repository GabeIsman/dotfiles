" Use ag instead ack if it's available
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nnoremap gr :Ack <cword><cr>
nnoremap Gr :Ack <cword> %:p:h/*<CR>
nnoremap gR :Ack '\b<cword>\b' *<CR>
nnoremap GR :Ack '\b<cword>\b' %:p:h/*<CR>

nnoremap <leader>ra :%s/<c-r><c-w>//gc<left><left><left>
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//g<left><left>


