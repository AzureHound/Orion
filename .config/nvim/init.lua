local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.guicursor = "n-v-c:ver25-blinkon1,i-ci-ve:ver25-blinkon1"
--vim.opt.number = true
--vim.opt.fillchars:append("eob: ")

--neovide
vim.g.neovide_scale_factor = 1.2
vim.o.guifont = "JetBrainsMono Nerd Font:h15" -- text below applies for VimScript
vim.g.neovide_theme = 'auto'
vim.g.neovide_remember_window_size = true
vim.g.neovide_transparency = 0.6
vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_floating_corner_radius = 0.6
vim.g.neovide_padding_top = 10
vim.g.neovide_padding_bottom = 4
vim.g.neovide_padding_right = 6
vim.g.neovide_padding_left = 8
vim.g.neovide_show_border = false
vim.g.neovide_refresh_rate = 60
vim.g.neovide_cursor_animation_length = 0.2
vim.g.neovide_cursor_trail_size = 0.4
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_remember_window_size = true

require("vim-options")
require("lazy").setup("plugins")
