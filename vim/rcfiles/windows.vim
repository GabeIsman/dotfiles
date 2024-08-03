" Window movement commands
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-h> :wincmd h<cr>
nnoremap <c-l> :wincmd l<cr>

nmap <leader>mw :call Maximize()<cr>

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

" Switch to most recently used buffer
nnoremap <leader><leader> :b#<cr>
nnoremap <c-n> :bnext<cr>
nnoremap <c-p> :bprevious<cr>

" Repeat the last command, @: is a little awkward
nnoremap <leader>. @:
" Redraw
nnoremap <leader>rd :redraw!<cr>
" Map :quit
nnoremap <leader>q :quit<cr>
nnoremap <leader><esc> :Obsession<cr>:qall!<cr>

" Write current buffer
nmap <leader>s :w!<CR>
" Open project notes
nnoremap <leader>en :tabnew NOTES.md<cr>
" Open scratch file with the same extension
nnoremap <leader>es :vsp scratch.<c-r>=simplify(expand('%:e'))<cr><cr>
" Open file explorer at the current file's directory
nnoremap <leader>ex :NvimTreeFindFile<cr>

" Open a new file in the current directory
nnoremap <leader>ed :e <c-r>=expand('%:h')<cr>/
nnoremap <leader>vsp :vsp <c-r>=expand('%:h')<cr>/
nnoremap <leader>sp :sp <c-r>=expand('%:h')<cr>/
" Save a copy of the current file in the current directory, current copy
" becomes alternate.
nnoremap <leader>ec :saveas <c-r>=expand('%:h')<cr>/
" Pull in the contents of a file
nnoremap <leader>rf :r <c-r>=expand('%:h')<cr>/
" Rename the current file
nnoremap <leader>rn :Rename <c-r>=expand('%:t')<cr><c-f>
" Create the file in single quotes relative to the current directory
vnoremap <leader>cf "ay:vsp <c-r>=simplify(expand('%:h') . "/<c-r>"")<cr><cr>

" Mappings for navigating between files with matching basenames
nnoremap <leader>gr :call ConditionalVSplit(expand("%:r:r") . ".rb")<cr>
nnoremap <leader>gj :call ConditionalVSplit(expand("%:r:r") . ".js")<cr>
nnoremap <leader>gc :call ConditionalVSplit(expand("%:r:r") . ".scss")<cr>
nnoremap <leader>gh :call ConditionalVSplit(expand("%:r:r") . ".html.erb")<cr>
nnoremap <leader>gp :call ConditionalVSplit(expand("spec/components/previews/%:t:r:r") . "_preview.rb")<cr>
" Split out projectionist alternate file
nnoremap <leader>gt :AV<cr>
nnoremap <leader>ct :call CreateSpec()<cr>

" Open last buffer in vertical split
nnoremap <leader>vl :vert sb#<cr>
nnoremap <leader>vs :sp sb#<cr>

function! ConditionalVSplit( fname )
  if  a:fname == ""
    return
  endif
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

" This is a hacky way to create a spec file for the current file that assumes
" you're in a rails project and that the spec file will be in the same
" directory as the current file.
" TODO: figure out how to make this work with
" projectionist mappings instead. Although maybe that's unnecessary, since
" projectionist works better in this scenario in non-rails projects.
function! CreateSpec()
  let l:specname = substitute(expand("%:r") . "_spec.rb", "app", "spec", "")
  call ConditionalVSplit(l:specname)
endfunction

command! -nargs=1 Split :call ConditionalVSplit("<args>")
