" vim settings
set wrap
set ruler
set number
set mouse=a
set showcmd
set nobackup
set hlsearch
set incsearch
set linebreak
set ignorecase
set noswapfile
set smartindent
set nocursorline
set nocursorcolumn
set encoding=UTF-8

" fzf brew pkg
set rtp+=/opt/homebrew/opt/fzf

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Plugins
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

