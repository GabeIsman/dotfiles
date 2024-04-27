set ignorecase
set smartcase

set tags=.git/tags


" Full project searches
" These are the search operations that I prefer to go straight to the qflist,
" for live project searches see telescope.lua.
nnoremap <leader>* :Grepper -tool rg -cword -noprompt<cr>
nnoremap <leader>f/ :GrepperAg<space><c-r>/<cr>
nnoremap gr :Grepper -tool rg -cword -noprompt<cr>
nnoremap gR :GrepperRg '\b<cword>\b' *<CR>

" Add operator for search
nmap gs  <plug>(GrepperOperator)
xmap gs  <plug>(GrepperOperator)
" old habits die hard
vnoremap <leader>fv <plug>(GrepperOperator)

" Find todos
command! Todo Grepper -noprompt -tool git -query -E '(TODO|FIXME|XXX):'
map <leader>td :Todo


" Replace current word (not necessarily word-bounded) in whole file, with
" confirm
nnoremap <leader>ra :%s/<c-r><c-w>//gc<left><left><left>
" Replace current bounded-word in whole file, with confirm
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//gc<left><left><left>
" Replace bounded word on line
nnoremap <leader>rl :s/\<<c-r><c-w>\>//g<left><left>
" Setup a an 'n.' style replacement for the current word
nnoremap <leader>r* *Nciw
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

" Remap vim-Visual-multi
let g:VM_maps = {}
let g:VM_maps["Exit"]               = '<C-C>'   " quit VM
let g:VM_maps['Find Under']         = '<C-d>'   " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'   " replace visual C-n
let g:VM_maps["Add Cursor Down"]    = '<M-j>'   " new cursor down
let g:VM_maps["Add Cursor Up"]      = '<M-k>'   " new cursor up
let g:VM_maps["Toggle Mappings"]    = '<CR>'    " toggle VM buffer mappings
let g:VM_silent_exit = 1
let g:VM_quit_after_leaving_insert_mode = 1
