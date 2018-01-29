" Window movement commands
nmap <leader>k :wincmd k<cr>
nmap <leader>j :wincmd j<cr>
nmap <leader>h :wincmd h<cr>
nmap <leader>l :wincmd l<cr>
nmap <leader>tn :call Maximize()<cr>

" Switch to most recently used buffer
nmap <leader><leader> :b#<cr>
" Search through open buffers
nmap <leader>b :CtrlPBuffer<cr>

" CtrlP mappings
nmap <leader>o :CtrlP<cr>
" Hack to get around my keyboard suddenly giving up on the function keys
nmap <leader>ro :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>d :CtrlP <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
nmap <leader>t :CtrlPTag<cr>
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s --files-with-matches --nocolor --hidden --skip-vcs-ignores -g ""'
let g:ctrlp_extensions = ['tag', 'undo']
" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

let g:window_is_maximized = 0
function! Maximize()
    if g:window_is_maximized
        wincmd =
        let g:window_is_maximized = 0
    else
        wincmd _
        wincmd |
        let g:window_is_maximized = 1
    endif
endfunction
