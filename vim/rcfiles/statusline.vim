function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
" Git branch this should only need to be
" updated on bufenter
" set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f                " File name
set statusline+=%(\ [%M%R%H%W]%)    " Modified, read-only, help, preview.
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=%y                 " File type
set statusline+=\%q                " Quick- or locaction-list indicator
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %l:%c
