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
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>rm :Gremove<cr>
vnoremap <leader>gl :Gbrowse<cr>
nnoremap <leader>gl :Gbrowse<cr>
