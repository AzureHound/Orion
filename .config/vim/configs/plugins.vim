" Vim-plug & Plugins
let data_dir = $XDG_DATA_HOME.'/vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $XDG_CONFIG_HOME.'/vim/vimrc'
endif

" Plugin Definitions
call plug#begin(data_dir . '/plugged')
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
call plug#end()

" Auto-install Plugins
if empty(glob(data_dir . '/plugged/catppuccin'))
  autocmd VimEnter * PlugInstall --sync | source $XDG_CONFIG_HOME.'/vim/vimrc'
endif

" Colorscheme
silent! colorscheme catppuccin_macchiato

" Plugin Configs
source $XDG_CONFIG_HOME/vim/plugins/airline.vim
source $XDG_CONFIG_HOME/vim/plugins/fzf.vim
source $XDG_CONFIG_HOME/vim/plugins/git-gutter.vim
source $XDG_CONFIG_HOME/vim/plugins/nerdtree.vim
source $XDG_CONFIG_HOME/vim/plugins/startify.vim
