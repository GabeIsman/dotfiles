" Window movement commands
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

nmap <leader>tn :call Maximize()<cr>

" Switch to most recently used buffer
nnoremap <leader><leader> :b#<cr>
nnoremap <c-n> :bnext<cr>
nnoremap <c-p> :bprevious<cr>

" Add FZF binary to runtime path
set rtp+=/usr/local/opt/fzf
" FZF mappings
nmap <leader>o :Files<cr>
" Search [i]n the directory of the current file
nmap <leader>i :Files <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>
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

" Leader mappings for commonly used tasks

" Repeat the last command, @: is a little awkward
nnoremap <leader>. @:
" Redraw
nnoremap <leader>rd :redraw!<cr>
" Map :quit
nnoremap <leader>q :quit<cr>

" Write current buffer
nmap <leader>s :w!<CR>
" Open project notes
nnoremap <leader>en :tabnew NOTES.md<cr>
" Open scratch file with the same extension
nnoremap <leader>es :vsp scratch.<c-r>=simplify(expand('%:e'))<cr><cr>
" Open NERDTree at the current file's directory
nnoremap <leader>ex :NERDTreeFind<cr>

map <leader>sl :Errors<cr>
" Open all instances of the TODOs in the current diff against master
" This is WIP and I haven't gotten it right yet. Should use the quickfix
" window ideally
map <leader>td :e search<cr>ggDG:r ! git diff --numstat master -G TODO --name-only<cr>

" Open a new file in the current directory
nnoremap <leader>ed :e <c-r>=expand('%:h')<cr>/
nnoremap <leader>vsp :vsp <c-r>=expand('%:h')<cr>/
nnoremap <leader>sp :sp <c-r>=expand('%:h')<cr>/
" Pull in the contents of a file
nnoremap <leader>rf :r <c-r>=expand('%:h')<cr>/
" Rename the current file
nnoremap <leader>rn :Rename <c-r>=expand('%:t')<cr><c-f>
" Create the file in single quotes relative to the current directory
nnoremap <leader>cf "ayi':vsp <c-r>=simplify(expand('%:h') . "/<c-r>a")<cr><cr>
vnoremap <leader>cf "ay:vsp <c-r>=simplify(expand('%:h') . "/<c-r>"")<cr><cr>

" Mappings for navigating between files with matching basenames
nnoremap <leader>gr :call ConditionalVSplit(expand("%:r:r") . ".rb")<cr>
nnoremap <leader>gj :call ConditionalVSplit(expand("%:r:r") . ".js")<cr>
nnoremap <leader>gc :call ConditionalVSplit(expand("%:r:r") . ".scss")<cr>
nnoremap <leader>gh :call ConditionalVSplit(expand("%:r:r") . ".html.erb")<cr>
nnoremap <leader>gp :call ConditionalVSplit(expand("spec/components/previews/%:t:r:r") . "_preview.rb")<cr>
" Split out projectionist alternate file
nnoremap <Leader>gt :AV<cr>

nnoremap <leader>vl :vert sb#<cr>
nnoremap <leader>vs :sp sb#<cr>
" Go to the file in quotes
nnoremap <leader>' vi'gf
" Go to file in vertical split, awkward that this depends on rails
nnoremap <leader>gv :vsp <c-r>=findfile(rails#cfile())<cr><cr>
" Open last buffer in vertical split

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
