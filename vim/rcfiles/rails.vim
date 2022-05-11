" RSpec.vim mappings
map <Leader>tf :call RunCurrentSpecFile()<cr>
map <Leader>ts :call RunNearestSpec()<cr>
map <Leader>tl :call RunLastSpec()<cr>
map <Leader>ta :call RunAllSpecs()<cr>
" Open a controller
map <leader>cs :Scontroller<space>
map <leader>cv :Vcontroller<space>
map <leader>ce :Econtroller<space>
map <leader>ct :Tcontroller<space>
" Open a model
map <leader>ms :Smodel<space>
map <leader>mv :Vmodel<space>
map <leader>me :Emodel<space>
" When in a model file, go to the corresponding database schema
nnoremap <leader>db :Eschema <c-r>=substitute(expand('%:t'), '.rb', 's', '')<cr><cr>
