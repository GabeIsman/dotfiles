set ignorecase
set smartcase

set tags=.git/tags


" Full project searches
nnoremap <leader>fp :GrepperAg<space>
vnoremap <leader>fv y:GrepperAg<space><c-r>"<cr>
nnoremap <leader>f/ :GrepperAg<space><c-r>/<cr>
nnoremap gr :GrepperAg <cword><cr>
nnoremap gR :GrepperAg '\b<cword>\b' *<CR>

" Replace current word (not necessarily word-bounded) in whole file, with
" confirm
nnoremap <leader>ra :%s/<c-r><c-w>//gc<left><left><left>
" Replace current bounded-word in whole file, with confirm
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//gc<left><left><left>
" Replace bounded word on line
nnoremap <leader>rl :s/\<<c-r><c-w>\>//g<left><left>
" Replace the rest of the word on the whole line
nnoremap <leader>re ye:s/<c-r>"//g<left><left>
" Replace the current search pattern in the whole file
nnoremap <leader>rs :%s/<c-r>///g<left><left>
" Replace the visual selection on the current line
vnoremap <leader>rv y:s/<c-r>"//g<left><left>
" Replace the visual selection in the whole file
vnoremap <leader>ra y:%s/<c-r>"//g<left><left>
" Replace current search buffer in whole file, with confirm
nnoremap <leader>r/ :%s/\<<c-r>/\>//gc<left><left><left>

" Search for the visual selection
vnoremap / "vy/<c-r>v<cr>
vnoremap ? "vy?<c-r>v<cr>
