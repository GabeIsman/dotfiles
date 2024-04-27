" Map over s completely since I never use it.
nmap s  <Plug>Ysurround
nmap S  <Plug>YSurround
nmap ss <Plug>Yssurround
nmap Ss <Plug>YSsurround
nmap SS <Plug>YSsurround

" Surround a that prompts for an href and inserts an a tag
let g:surround_{char2nr("a")} = "<a\1href: \r..*\r href=\"&\"\1>\r</a>"

" I prefer to have <c-g> resolve instantly instead of waiting.
let g:surround_no_insert_mappings = 1
