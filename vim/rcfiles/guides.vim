" Make it obvious where 100 characters is but don't auto wrap.
set colorcolumn=100
highlight ColorColumn ctermbg=darkyellow guibg=darkyellow

" Turn off pair-matching for basic punctuation
let g:lexima_enable_basic_rules = 0

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
  \ 'scss': ['prettier']
\ }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
  \ 'scss': ['prettier'],
\   'ruby': ['rubocop'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" Disable linting between saves
let g:ale_lint_on_text_changed = 'never'

nnoremap <c-i> :ALEHover<CR>
nnoremap <silent> gr :ALEFindReferences<CR>
nnoremap <leader>rn :ALERename<CR>
nnoremap <leader>srn :ALECodeAction<CR>
vnoremap <leader>srn :ALECodeAction<CR>

nmap <silent> ]e <Plug>(ale_previous_wrap)
nmap <silent> [e <Plug>(ale_next_wrap)
