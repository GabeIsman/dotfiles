set updatetime=100

" Git leader mappings
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>rm :GDelete!<cr>
vnoremap <leader>gl :GBrowse<cr>
nnoremap <leader>gl :GBrowse<cr>

" Open a quickfix window with the files from the specified diff
command -nargs=? -bar Gqf call setqflist(map(systemlist("git diff --name-only <args>"), '{"filename": v:val, "lnum": 1}'))
