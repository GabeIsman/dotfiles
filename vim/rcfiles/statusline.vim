" Build the status line

set statusline=%.40f         " Relative path to the file in buffer
set statusline+=\ %(%m%r%h%q%)        " Indicate if the buffer is modified, read-only, or a help file
set statusline+=%=        " Switch to the right side
set statusline+=%y\ -\ %3c,%P  " Show the current column
