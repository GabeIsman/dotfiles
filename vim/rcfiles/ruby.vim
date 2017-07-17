" Settings specific to ruby files

augroup rubypath
  autocmd!
  autocmd FileType ruby setlocal suffixesadd+=.rb
augroup END

" Add 'rubocop' to turn on style linting, needs tuning before it's useful
" It's also a bit slow (I imagine especially on non-uniform codebases)
let g:syntastic_ruby_checkers = ['mri']
