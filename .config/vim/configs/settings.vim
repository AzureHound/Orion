" Settings
set ruler
set nowrap
set number
set mouse=a
set showcmd
set hlsearch
set nobackup
set smarttab
set syntax=on
set tabstop=2
set expandtab
set incsearch
set showmatch
set linebreak
set cursorline
set ignorecase
set noswapfile
set noshowmode
set guicursor=
set autoindent
set scrolloff=4
set smartindent
set shiftwidth=2
set shortmess+=F
set nocursorcolumn
set ttimeoutlen=10
set fillchars=eob:-

filetype on
filetype plugin on
filetype indent on
set encoding=UTF-8
set clipboard=unnamedplus

" Grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Line Highlighting
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
