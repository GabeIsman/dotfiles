" Use relative numbers in normal mode, and absolute in insert
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Make it obvious where 100 characters is but don't auto wrap.
set colorcolumn=100
highlight ColorColumn ctermbg=darkyellow guibg=darkyellow

" Turn on indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" Turn off default toggle mapping because it slows down <leader>i
silent! unmap <leader>ig

" Turn on ALE extension for airline
let g:airline#extensions#ale#enabled = 1

" Specify which linters should run
" TODO: this could be moved to ftplugin files per language
let g:ale_linters = {
  \ 'ruby':
    \ [
      \ 'rubocop',
      \ 'ruby',
      \ 'brakeman',
      \ 'cspell',
      \ 'rails_best_practices',
    \ ],
  \ 'javascript': ['prettier', 'tsserver'],
  \ 'sass': ['prettier']
\ }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'ruby': ['rubocop'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

nnoremap <c-i> :ALEHover<CR>
nnoremap <silent> gr :ALEFindReferences<CR>
nnoremap <leader>rn :ALERename<CR>
nnoremap <leader>srn :ALECodeAction<CR>
vnoremap <leader>srn :ALECodeAction<CR>

nmap <silent> ]e <Plug>(ale_previous_wrap)
nmap <silent> [e <Plug>(ale_next_wrap)
