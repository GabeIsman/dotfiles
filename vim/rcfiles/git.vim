set updatetime=100

let g:gitgutter_map_keys = 0
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>(GitGutterStageHunk)
nmap <Leader>hc <Plug>(GitGutterUndoHunk)
nmap <Leader>hv <Plug>(GitGutterPreviewHunk)

" Git leader mappings
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gd :GDiff<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>rm :GDelete<cr>
vnoremap <leader>gl :GBrowse<cr>
nnoremap <leader>gl :GBrowse<cr>

" Open a quickfix window with the files from the specified diff
command -nargs=? -bar Gqf call setqflist(map(systemlist("git diff --name-only <args>"), '{"filename": v:val, "lnum": 1}'))
