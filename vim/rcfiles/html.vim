" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'
" Source tags are self closing, don't indent them."
let g:html_indent_autotags = "source"

" Format HTML (understands embedded ruby tags)
" `gem install htmlbeautifier` if command not found.
:command! HTMLFormat %!htmlbeautifier

" These are useful in .svelte files, .jsx, etc. Just turn them on globally
let g:ragtag_global_maps = 1

" Map c-e to ragtag's 'close tag' mapping
imap <c-e> <c-x>/
