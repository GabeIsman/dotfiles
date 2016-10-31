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
" Open a new file in the current directory
nnoremap <leader>e :e %:h/
nnoremap <leader>vs %:h/
nnoremap <leader>sp :e %:h/
" RSpec.vim mappings
map <Leader>tf :call RunCurrentSpecFile()<CR>
map <Leader>ts :call RunNearestSpec()<CR>
map <Leader>tl :call RunLastSpec()<CR>
map <Leader>ta :call RunAllSpecs()<CR>
" Go to the file in quotes
map <leader>' vi'gf
" Retab the whole file
map <leader>rt :%retab<cr>
" Re-indent the whole file (no idea why I had to put to <c-o>'s)
map <leader>= ggVG=<c-o><c-o>

" Nicer code pasting
function! PasteCode()
  set paste
  execute "normal! o\<esc>\"*]p"
  set nopaste
endfunction

nmap <leader>p :call PasteCode()<CR>

