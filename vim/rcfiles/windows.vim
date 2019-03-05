" Window movement commands
nmap <c-k> :wincmd k<cr>
nmap <c-j> :wincmd j<cr>
nmap <c-h> :wincmd h<cr>
nmap <c-l> :wincmd l<cr>

nmap <leader>tn :call Maximize()<cr>

" Switch to most recently used buffer
nmap <leader><leader> :b#<cr>

" FZF mappings
nmap <leader>o :Files<cr>
nmap <leader>p :Files <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
nmap <leader>t :Tags<cr>
nmap <leader>b :Buffers<cr>

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
