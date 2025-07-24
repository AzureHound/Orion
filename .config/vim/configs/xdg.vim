" XDG Directory Support
if empty($XDG_CACHE_HOME)  | let $XDG_CACHE_HOME  = $HOME.'/.cache'       | endif
if empty($XDG_CONFIG_HOME) | let $XDG_CONFIG_HOME = $HOME.'/.config'      | endif
if empty($XDG_DATA_HOME)   | let $XDG_DATA_HOME   = $HOME.'/.local/share' | endif
if empty($XDG_STATE_HOME)  | let $XDG_STATE_HOME  = $HOME.'/.local/state' | endif

" Runtime paths for XDG directories
set runtimepath^=$XDG_CONFIG_HOME/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$XDG_CONFIG_HOME/vim/after

" Pack paths
set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

" Vim temp file path
let &viminfofile = $XDG_STATE_HOME.'/vim/viminfo'

" Create required directories
let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
set backupdir=$XDG_STATE_HOME/vim/backup//   | call mkdir(&backupdir, 'p')
set directory=$XDG_STATE_HOME/vim/swap//     | call mkdir(&directory, 'p')
set undodir=$XDG_STATE_HOME/vim/undo//       | call mkdir(&undodir,   'p')
set viewdir=$XDG_STATE_HOME/vim/view//       | call mkdir(&viewdir,   'p')
