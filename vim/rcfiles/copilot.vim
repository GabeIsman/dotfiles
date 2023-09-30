" Copilot disabled but provide a mapping to affirmatively request a
" suggestion.
let g:copilot_enabled = v:false

imap <silent><script><expr> <c-f> copilot#Accept("\<c-f>")
inoremap <c-s> <plug>(copilot-suggest)

" This doesn't seem to be working.
highlight CopilotSuggestion guifg=#555555 ctermfg=8
