nmap <silent> <leader>ts :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>

let test#strategy = "kitty"
let g:test#preserve_screen = 1
