" Copilot disabled but provide a mapping to affirmatively request a
" suggestion.
let g:copilot_enabled = v:false

let g:copilot_no_tab_map = v:true

imap <silent><script><expr> <c-f> copilot#Accept("\<c-f>")
inoremap <c-g> <plug>(copilot-suggest)


" This doesn't seem to be working.
highlight CopilotSuggestion guifg=#555555 ctermfg=8
