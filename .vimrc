" Add fzf to runtime path (macOS-specific)
set rtp+=/opt/homebrew/opt/fzf

" Key mappings for window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

call plug#begin()

" Plugins
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

call plug#end()
