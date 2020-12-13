" Remappings of basic things

" move by visual lines rather than machine lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" jk and jj are both escape
inoremap jk <esc>
inoremap jj <esc>

" H K L J should move the cursor
nnoremap J <C-d>
vnoremap J <C-d>
onoremap J <C-d>
nnoremap K <C-U>
xnoremap K <C-U>
nnoremap K <C-U>
noremap H ^
onoremap H ^
noremap L g$

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
" Git leader mappings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>

" Open a new file in the current directory
nnoremap <leader>e :e %:h/
nnoremap <leader>vs %:h/
nnoremap <leader>sp :e %:h/
" Create the file in single quotes relative to the current directory
nnoremap <leader>cf "ayi':vsp <c-r>=simplify(expand('%:h') . "/<c-r>a")<cr><cr>
" Delete the current file
nnoremap <leader>rm :call delete(expand('%')) \| bdelete!<CR>
" RSpec.vim mappings
map <Leader>tf :call RunCurrentSpecFile()<cr>
map <Leader>ts :call RunNearestSpec()<cr>
map <Leader>tl :call RunLastSpec()<cr>
map <Leader>ta :call RunAllSpecs()<cr>
" Split out projectionist alternate file
map <Leader>gt :AV<cr>
" Open a controller
map <leader>cs :Scontroller<space>
map <leader>cv :Vcontroller<space>
map <leader>ce :Econtroller<space>
map <leader>ct :Tcontroller<space>
" Open a model
map <leader>ms :Smodel<space>
map <leader>mv :Vmodel<space>
map <leader>me :Emodel<space>
" When in a model file, go to the corresponding database schema
nnoremap <leader>db :Eschema <c-r>=substitute(expand('%:t'), '.rb', 's', '')<cr><cr>
" Go to the file in quotes
map <leader>' vi'gf
" Go to file in vertical split
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

" Nicer code pasting
function! PasteCode()
  set paste
  execute "normal! o\<esc>\"*]p"
  set nopaste
endfunction

nmap <leader>p :call PasteCode()<cr>
" xnoremap p qgvy " When pasting in visual mode, restore the pasted text to the unnamed register

