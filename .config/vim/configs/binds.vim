" Keybindings
let mapleader = " "
map <leader>p :call TogglePaste()<cr>

nnoremap <C-a> ggVG
nnoremap <C-s> :w<CR>
nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>
nnoremap <leader>b :Buffer<CR>
nnoremap <C-p> :Files<Cr>
nnoremap <C-Q> :Rg<Cr>
nnoremap <leader>e :call NerdTreeToggleFind()<CR>

inoremap <C-a> <Esc>ggVG
inoremap <C-s> <Esc>:w<CR>a

vnoremap <C-s> <Esc>:w<CR>gv
