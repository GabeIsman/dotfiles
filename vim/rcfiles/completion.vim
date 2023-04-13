let g:deoplete#enable_at_startup = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

function s:customize_deoplete()
  call deoplete#custom#option({
  \  'auto_complete_delay': 100,
  \ })
endfunction
" Pass a dictionary to set multiple options

if v:vim_did_enter
  call s:customize_deoplete()
else
  au VimEnter * call s:customize_deoplete()
endif
