" Settings specific to ruby files

augroup rubypath
  autocmd!
  autocmd FileType ruby setlocal suffixesadd+=.rb
augroup END


command! -range=% StringifyKeys silent execute <line1>.','.<line2>.'s/\(\w\+\):\s*/"\1" => /'
command! -range=% SymbolizeKeys silent execute <line1>.','.<line2>.'s/"\(\w\+\)"\s*=> /\1: /'

vnoremap <leader>ks :StringifyKeys<cr>
vnoremap <leader>ky :SymbolizeKeys<cr>

nnoremap <leader>ks vi{:StringifyKeys<cr>
nnoremap <leader>ky vi{:SymbolizeKeys<cr>
