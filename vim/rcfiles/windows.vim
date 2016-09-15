" Window movement commands
nmap <leader>k :wincmd k<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>l :wincmd l<CR>

" Switch to most recently used buffer
nmap <leader><leader> :b#<CR>
" Search through open buffers
nmap <leader>b :CtrlPBuffer<cr>

" CtrlP mappings
nmap <leader>o :CtrlP<cr>
nmap <leader>d :CtrlP <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
