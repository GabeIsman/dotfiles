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
" Search [i]n the directory of the current file
nmap <leader>i :Files <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
nmap <leader>t :Tags<cr>
nmap <leader>b :Buffers<cr>

" FZF control keys
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

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

" Mappings for navigating between files with matching basenames
nnoremap <leader>gr :call ConditionalVSplit(expand("%:r:r") . ".rb")<cr>
nnoremap <leader>gj :call ConditionalVSplit(expand("%:r:r") . ".js")<cr>
nnoremap <leader>gc :call ConditionalVSplit(expand("%:r:r") . ".scss")<cr>
nnoremap <leader>gh :call ConditionalVSplit(expand("%:r:r") . ".html.erb")<cr>

" Open a new file in the current directory
nnoremap <leader>ed :e <c-r>=expand('%:h')<cr>/
nnoremap <leader>vsp :vsp <c-r>=expand('%:h')<cr>/
nnoremap <leader>sp :sp <c-r>=expand('%:h')<cr>/
" Pull in the contents of a file
nnoremap <leader>rf :r <c-r>=expand('%:h')<cr>/
" Create the file in single quotes relative to the current directory
nnoremap <leader>cf "ayi':vsp <c-r>=simplify(expand('%:h') . "/<c-r>a")<cr><cr>
vnoremap <leader>cf "ay:vsp <c-r>=simplify(expand('%:h') . "/<c-r>"")<cr><cr>

function! ConditionalVSplit( fname )
  let bufnum=bufnr(expand(a:fname))
  let winnum=bufwinnr(bufnum)
  if winnum != -1
    " Jump to existing split
    exe winnum . "wincmd w"
  else
    " Make new split as usual
    exe "vsplit " . a:fname
  endif
endfunction

command! -nargs=1 Split :call ConditionalVSplit("<args>")
