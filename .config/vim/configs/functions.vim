" Paste toggle function
function! TogglePaste()
    if(&paste == 0)
        set paste | echo "Paste Mode Enabled"
    else
        set nopaste | echo "Paste Mode Disabled"
    endif
endfunction

" NERDTree toggle function
function! NerdTreeToggleFind()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        NERDTreeClose
    elseif filereadable(expand('%'))
        NERDTreeFind
    else
        NERDTree
    endif
endfunction
