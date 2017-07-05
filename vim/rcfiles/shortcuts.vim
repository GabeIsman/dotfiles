" Leader mappings for commonly used tasks

" Open project notes
nnoremap <leader>en :tabnew NOTES.md<cr>
" Open netrw at the current file's directory
nnoremap <leader>ex :Explore<cr>
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
nnoremap <leader>cf vi'"ay:vsp <c-r>=simplify(expand('%:h') . "/<c-r>a")<cr><cr>
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
" Go to the file in quotes
map <leader>' vi'gf
" Go to file in vertical split
nnoremap gv :vsp <c-r>=findfile(rails#cfile())<cr><cr>
" Open last buffer in vertical split
nnoremap <leader>vl :vert sb#<cr>
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

