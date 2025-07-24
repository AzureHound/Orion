" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
autocmd BufEnter * if (winnr("$") == 1 && exists("g:NERDTree") && g:NERDTree.IsOpen()) | quit | endif
