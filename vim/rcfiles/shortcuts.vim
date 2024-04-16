" Remappings of basic things

" move by visual lines rather than machine lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" jk and jj are both escape
inoremap jk <esc>
inoremap jj <esc>

" Scrolling remaps
" H K L J should move the cursor
noremap J <C-d>
noremap K <C-U>
noremap H ^
noremap L $
" Scroll by half-pages with f/b
noremap <c-f> <c-d>
noremap <c-b> <c-u>


" Since we're mapping over join, lets call it merge
noremap M J

" Redo
nnoremap U <C-r>

" Map control movements to arrow keys in insert
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-k> <up>

" Leave cursor at end of yanked text in visual mode
xnoremap y y`>
" Leave cursor at end of pasted text
nnoremap p p`]

" Always reuse substitute flags when re-running an :s command
nnoremap & :&&<cr>
" Visual mode equivalent of re-running substituted command
xnoremap & :&&<cr>

" Make home and end keys refer to document rather than line
nnoremap <home> gg
nnoremap <end> G

" remove search highlights
nnoremap <leader>l :nohlsearch<CR>


" Retab the whole file
map <leader>rt :%retab<cr>
" Re-indent the whole file
map <leader>= maggVG=`a
" Split the current line after each comma
map <leader>, :s/,/,\r/g<cr>:nohlsearch<cr>=ap<cr>
" Repeat last command for whole file
map <leader>a ma:%<c-r>:<cr>`a
map <leader>ya maggVGy`a

" Nicer code pasting
function! PasteCode()
  set paste
  execute "normal! o\<esc>\"*]p"
  set nopaste
endfunction

nnoremap <leader>p "0p
xnoremap <leader>p "0p
vnoremap <leader>p "0p
