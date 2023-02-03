function! DisplayPath()
  return pathshorten(expand('%'))
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=\ %{DisplayPath()}\                " File name
set statusline+=%#LineNr#\           " Switch colors
" set statusline+=%{FugitiveStatusline()} " Git details, opting out for now
set statusline+=%(\ [%M%R%H%W]%)    " Modified, read-only, help, preview.
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=%y                 " File type
set statusline+=\%q                " Quick- or locaction-list indicator
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %l/%L:%c
