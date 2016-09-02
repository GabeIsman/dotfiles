" Leader mappings for commonly used tasks

" Open project notes
nnoremap <leader>en :tabnew NOTES.md<cr>

" Nicer code pasting
function! PasteCode()
  set paste
  execute "normal! o\<esc>\"*]p"
  set nopaste
endfunction

nmap <leader>p :call PasteCode()<CR>

