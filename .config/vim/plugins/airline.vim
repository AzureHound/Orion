" Airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'deus'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '∅'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s '

let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline#toggle#whitespace = 0

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#format = 1

let g:airline_section_c = '%t'
"let g:airline_extensions = []

let g:airline#extensions#hunks#enabled = 1
let g:airline_section_z = '%3p%%%3l:%c'

function! AirlineCustomMode()
  return " " . airline#parts#mode()
endfunction

let g:airline_section_a = '%{AirlineCustomMode()}'

autocmd FileType nerdtree setlocal laststatus=0
autocmd BufLeave * if &filetype == 'nerdtree' | set laststatus=2 | endif
