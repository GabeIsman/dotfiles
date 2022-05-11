" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Format HTML (understands embedded ruby tags)
" `gem install htmlbeautifier` if command not found.
:command! HTMLFormat %!htmlbeautifier

" Map c-e to ragtag's 'close tag' mapping
imap <c-e> <c-x>/
