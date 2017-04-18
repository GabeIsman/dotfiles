" Window movement commands
nmap <leader>k :wincmd k<cr>
nmap <leader>j :wincmd j<cr>
nmap <leader>h :wincmd h<cr>
nmap <leader>l :wincmd l<cr>
nmap <leader>tn :tab sp<cr>

" Switch to most recently used buffer
nmap <leader><leader> :b#<cr>
" Search through open buffers
nmap <leader>b :CtrlPBuffer<cr>

" CtrlP mappings
nmap <leader>o :CtrlP<cr>
nmap <leader>d :CtrlP <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
