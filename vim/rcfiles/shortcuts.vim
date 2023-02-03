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

" Leader mappings for commonly used tasks

" Write current buffer
nmap <leader>s :w<CR>
" Open project notes
nnoremap <leader>en :tabnew NOTES.md<cr>
" Open scratch file with the same extension
nnoremap <leader>es :vsp scratch.<c-r>=simplify(expand('%:e'))<cr><cr>
" Open NERDTree at the current file's directory
nnoremap <leader>ex :NERDTreeFind<cr>
" Repeat the last command, @: is a little awkward
nnoremap <leader>. @:
" Redraw
nnoremap <leader>rd :redraw!<cr>
" Map :quit
nnoremap <leader>q :quit<cr>

" Split out projectionist alternate file
map <Leader>gt :AV<cr>

" Go to the file in quotes
map <leader>' vi'gf
" Go to file in vertical split, awkward that this depends on rails
nnoremap <leader>gv :vsp <c-r>=findfile(rails#cfile())<cr><cr>
" Open last buffer in vertical split
nnoremap <leader>vl :vert sb#<cr>
nnoremap <leader>vs :sp sb#<cr>
" Retab the whole file
map <leader>rt :%retab<cr>
" Re-indent the whole file
map <leader>= maggVG=`a
" Split the current line after each comma
map <leader>, :s/,/,\r/g<cr>:nohlsearch<cr>=ap<cr>
" Repeat last command for whole file
map <leader>a ma:%<c-r>:<cr>`a
map <leader>ya maggVGy`a
" Pop up the syntastic errors window
map <leader>sl :Errors<cr>
" Open all instances of the TODOs in the current diff against master
" This is WIP and I haven't gotten it right yet. Should use the quickfix
" window ideally
map <leader>td :e search<cr>ggDG:r ! git diff --numstat master -G TODO --name-only<cr>

" Nicer code pasting
function! PasteCode()
  set paste
  execute "normal! o\<esc>\"*]p"
  set nopaste
endfunction

nnoremap <leader>p "0p
xnoremap <leader>p "0p
vnoremap <leader>p "0p
